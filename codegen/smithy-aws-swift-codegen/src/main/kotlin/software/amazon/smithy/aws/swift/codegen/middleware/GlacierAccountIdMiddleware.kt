package software.amazon.smithy.aws.swift.codegen.middleware

import software.amazon.smithy.codegen.core.SymbolProvider
import software.amazon.smithy.model.Model
import software.amazon.smithy.model.shapes.OperationShape
import software.amazon.smithy.model.shapes.StructureShape
import software.amazon.smithy.swift.codegen.SwiftWriter
import software.amazon.smithy.swift.codegen.integration.ProtocolGenerator
import software.amazon.smithy.swift.codegen.integration.middlewares.handlers.MiddlewareShapeUtils
import software.amazon.smithy.swift.codegen.middleware.MiddlewarePosition
import software.amazon.smithy.swift.codegen.middleware.MiddlewareRenderable
import software.amazon.smithy.swift.codegen.middleware.MiddlewareStep
import software.amazon.smithy.swift.codegen.model.expectShape
import software.amazon.smithy.swift.codegen.swiftmodules.ClientRuntimeTypes

class GlacierAccountIdMiddleware(private val model: Model, private val symbolProvider: SymbolProvider) : MiddlewareRenderable {
    override val name = "GlacierAccountIdAutoFill"

    override val middlewareStep = MiddlewareStep.INITIALIZESTEP

    override val position = MiddlewarePosition.BEFORE

    override fun render(ctx: ProtocolGenerator.GenerationContext, writer: SwiftWriter, op: OperationShape, operationStackName: String) {
        val outputShapeName = MiddlewareShapeUtils.outputSymbol(symbolProvider, model, op).name
        val accountId = model.expectShape<StructureShape>(op.input.get()).members().first { it.memberName.lowercase() == "accountid" }
        if (ctx.settings.useInterceptors) {
            writer.write(
                """
                builder.interceptors.addModifyBeforeSerialization { context in
                    let input = context.getInput()
                    guard let accountId = input.${accountId.memberName}, !accountId.isEmpty else {
                        var copiedInput = input
                        copiedInput.${accountId.memberName} = "-"
                        context.updateInput(updated: copiedInput)
                        return
                    }
                }
                """.trimIndent()
            )
        } else {
            writer.openBlock(
                "$operationStackName.${middlewareStep.stringValue()}.intercept(position: ${position.stringValue()}, id: \"${name}\") { (context, input, next) -> \$N<$outputShapeName> in", "}",
                ClientRuntimeTypes.Middleware.OperationOutput
            ) {
                writer.openBlock("guard let accountId = input.${accountId.memberName}, !accountId.isEmpty else {", "}") {
                    writer.write("var copiedInput = input")
                    writer.write("copiedInput.${accountId.memberName} = \"-\"")
                    writer.write("return try await next.handle(context: context, input: copiedInput)")
                }
                writer.write("return try await next.handle(context: context, input: input)")
            }
        }
    }
}
