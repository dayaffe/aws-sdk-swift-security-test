/*
 * Copyright Amazon.com, Inc. or its affiliates. All Rights Reserved.
 * SPDX-License-Identifier: Apache-2.0.
 */

package software.amazon.smithy.aws.swift.codegen

import software.amazon.smithy.aws.swift.codegen.model.traits.Presignable
import software.amazon.smithy.aws.swift.codegen.swiftmodules.AWSClientRuntimeTypes.Core.AWSClientConfiguration
import software.amazon.smithy.model.shapes.OperationShape
import software.amazon.smithy.model.shapes.ServiceShape
import software.amazon.smithy.swift.codegen.FoundationTypes
import software.amazon.smithy.swift.codegen.SwiftDeclaration
import software.amazon.smithy.swift.codegen.SwiftDelegator
import software.amazon.smithy.swift.codegen.SwiftDependency
import software.amazon.smithy.swift.codegen.SwiftWriter
import software.amazon.smithy.swift.codegen.core.SwiftCodegenContext
import software.amazon.smithy.swift.codegen.core.toProtocolGenerationContext
import software.amazon.smithy.swift.codegen.integration.ProtocolGenerator
import software.amazon.smithy.swift.codegen.integration.SwiftIntegration
import software.amazon.smithy.swift.codegen.middleware.MiddlewareExecutionGenerator
import software.amazon.smithy.swift.codegen.middleware.MiddlewareExecutionGenerator.Companion.ContextAttributeCodegenFlowType.PRESIGN_REQUEST
import software.amazon.smithy.swift.codegen.model.expectShape
import software.amazon.smithy.swift.codegen.model.toUpperCamelCase
import software.amazon.smithy.swift.codegen.swiftmodules.ClientRuntimeTypes.Middleware.NoopHandler
import software.amazon.smithy.swift.codegen.swiftmodules.SmithyHTTPAPITypes
import software.amazon.smithy.swift.codegen.swiftmodules.SmithyTypes

data class PresignableOperation(
    val serviceId: String,
    val operationId: String,
)

class PresignerGenerator : SwiftIntegration {
    override fun writeAdditionalFiles(ctx: SwiftCodegenContext, protoCtx: ProtocolGenerator.GenerationContext, delegator: SwiftDelegator) {
        val service = ctx.model.expectShape<ServiceShape>(ctx.settings.service)

        if (!SigV4Utils.isSupportedAuthentication(ctx.model, service)) return
        val presignOperations = service.allOperations
            .map { ctx.model.expectShape<OperationShape>(it) }
            .filter { operationShape -> operationShape.hasTrait(Presignable.ID) }
            .map { operationShape ->
                check(SigV4Utils.hasSigV4AuthScheme(ctx.model, service, operationShape)) { "Operation does not have valid auth trait" }
                PresignableOperation(service.id.toString(), operationShape.id.toString())
            }
        presignOperations.forEach { presignableOperation ->
            val op = ctx.model.expectShape<OperationShape>(presignableOperation.operationId)
            val inputType = op.input.get().getName()
            val outputType = op.output.get().getName()
            delegator.useFileWriter("${ctx.settings.moduleName}/models/$inputType+Presigner.swift") { writer ->
                var serviceConfig = AWSServiceConfig(writer, protoCtx)
                renderPresigner(writer, ctx, delegator, op, inputType, outputType, serviceConfig)
            }
            // Expose presign-request as a method for service client object
            val symbol = protoCtx.symbolProvider.toSymbol(protoCtx.service)
            protoCtx.delegator.useFileWriter("./${ctx.settings.moduleName}/${symbol.name}.swift") { writer ->
                renderPresignAPIInServiceClient(writer, symbol.name, op, inputType)
            }
        }
        // Import FoundationeNetworking statement with preprocessor commands
        if (presignOperations.isNotEmpty()) {
            val symbol = protoCtx.symbolProvider.toSymbol(protoCtx.service)
            protoCtx.delegator.useFileWriter("./${ctx.settings.moduleName}/${symbol.name}.swift") { writer ->
                // In Linux, Foundation.URLRequest is moved to FoundationNetworking.
                writer.addImport(packageName = "FoundationNetworking", importOnlyIfCanImport = true)
            }
        }
    }

    private fun renderPresigner(
        writer: SwiftWriter,
        ctx: SwiftCodegenContext,
        delegator: SwiftDelegator,
        op: OperationShape,
        inputType: String,
        outputType: String,
        serviceConfig: AWSServiceConfig
    ) {
        val serviceShape = ctx.model.expectShape<ServiceShape>(ctx.settings.service)
        val protocolGenerator = ctx.protocolGenerator?.let { it } ?: run { return }
        val protocolGeneratorContext = ctx.toProtocolGenerationContext(serviceShape, delegator)?.let { it } ?: run { return }
        val operationMiddleware = protocolGenerator.operationMiddleware

        writer.addImport(AWSClientConfiguration)
        writer.addImport(SwiftDependency.SMITHY.target)
        writer.addImport(SwiftDependency.SMITHY_HTTP_API.target)
        writer.addIndividualTypeImport(SwiftDeclaration.TYPEALIAS, "Foundation", "TimeInterval")

        val httpBindingResolver = protocolGenerator.getProtocolHttpBindingResolver(protocolGeneratorContext, protocolGenerator.defaultContentType)

        writer.openBlock("extension $inputType {", "}") {
            writer.openBlock("public func presign(config: \$L, expiration: \$N) async throws -> \$T {", "}", serviceConfig.typeName, FoundationTypes.TimeInterval, SmithyHTTPAPITypes.SdkHttpRequest) {
                writer.write("let serviceName = \$S", ctx.settings.sdkId)
                writer.write("let input = self")
                if (protocolGeneratorContext.settings.useInterceptors) {
                    writer.openBlock(
                        "let client: (\$N, \$N) async throws -> \$N = { (_, _) in",
                        "}",
                        SmithyHTTPAPITypes.SdkHttpRequest,
                        SmithyTypes.Context,
                        SmithyHTTPAPITypes.HttpResponse,
                    ) {
                        writer.write(
                            "throw \$N.unknownError(\"No HTTP client configured for presigned request\")",
                            SmithyTypes.ClientError
                        )
                    }
                }
                val operationStackName = "operation"
                val generator = MiddlewareExecutionGenerator(
                    protocolGeneratorContext,
                    writer,
                    httpBindingResolver,
                    protocolGenerator.customizations,
                    operationMiddleware,
                    operationStackName
                )
                generator.render(serviceShape, op, PRESIGN_REQUEST) { writer, _ ->
                    writer.write("return nil")
                }

                if (protocolGeneratorContext.settings.useInterceptors) {
                    writer.write("return try await op.presignRequest(input: input)")
                } else {
                    val requestBuilderName = "presignedRequestBuilder"
                    val builtRequestName = "builtRequest"
                    writer.write(
                        "let $requestBuilderName = try await $operationStackName.presignedRequest(context: context, input: input, output: \$L(), next: \$N())",
                        outputType,
                        NoopHandler
                    )
                    writer.openBlock("guard let $builtRequestName = $requestBuilderName?.build() else {", "}") {
                        writer.write("return nil")
                    }
                    writer.write("return $builtRequestName")
                }
            }
        }
    }

    private fun renderPresignAPIInServiceClient(
        writer: SwiftWriter,
        clientName: String,
        op: OperationShape,
        inputType: String
    ) {
        writer.apply {
            openBlock("extension $clientName {", "}") {
                val params = listOf("input: $inputType", "expiration: Foundation.TimeInterval")
                val returnType = "URLRequest"
                renderDocForPresignAPI(this, op, inputType)
                openBlock("public func presignedRequestFor${op.toUpperCamelCase()}(${params.joinToString()}) async throws -> $returnType {", "}") {
                    write("let presignedRequest = try await input.presign(config: config, expiration: expiration)")
                    openBlock("guard let presignedRequest else {", "}") {
                        write("throw ClientError.unknownError(\"Could not presign the request for the operation ${op.toUpperCamelCase()}.\")")
                    }
                    write("return try await URLRequest(sdkRequest: presignedRequest)")
                }
            }
        }
    }

    private fun renderDocForPresignAPI(writer: SwiftWriter, op: OperationShape, inputType: String) {
        writer.apply {
            write("/// Presigns the request for ${op.toUpperCamelCase()} operation with the given input object $inputType.")
            write("/// The presigned request will be valid for the given expiration, in seconds.")
            write("///")
            write("/// Below is the documentation for ${op.toUpperCamelCase()} operation:")
            writeShapeDocs(op)
            write("///")
            write("/// - Parameter input: The input object for ${op.toUpperCamelCase()} operation used to construct request.")
            write("/// - Parameter expiration: The duration (in seconds) the presigned request will be valid for.")
            write("///")
            write("/// - Returns: `URLRequest`: The presigned request for ${op.toUpperCamelCase()} operation.")
        }
    }
}
