/*
 * Copyright Amazon.com, Inc. or its affiliates. All Rights Reserved.
 * SPDX-License-Identifier: Apache-2.0.
 */

package software.amazon.smithy.aws.swift.codegen

import io.kotest.matchers.string.shouldContainOnlyOnce
import org.junit.jupiter.api.Test
import software.amazon.smithy.codegen.core.Symbol
import software.amazon.smithy.swift.codegen.MiddlewareGenerator
import software.amazon.smithy.swift.codegen.SwiftDependency
import software.amazon.smithy.swift.codegen.SwiftWriter
import software.amazon.smithy.swift.codegen.middleware.EndpointResolverMiddleware

class EndpointResolverMiddlewareTests {
    @Test
    fun `test endpoint resolver middleware`() {
        val writer = SwiftWriter("testName")
        val inputSymbol = Symbol.builder().name("SdkHttpRequestBuilder").build()
        val outputSymbol = Symbol.builder().name("OperationStackOutput").build()
        val outputErrorSymbol = Symbol.builder().name("OperationStackError").build()
        val middleware = EndpointResolverMiddleware(writer, inputSymbol, outputSymbol, outputErrorSymbol)
        writer.addImport(SwiftDependency.CLIENT_RUNTIME.target)
        MiddlewareGenerator(writer, middleware).generate()
        val contents = writer.toString()
        val expected = """
public struct EndpointResolverMiddleware<OperationStackOutput>: ClientRuntime.Middleware {
    public let id: Swift.String = "EndpointResolverMiddleware"

    let endpointResolver: EndpointResolver

    let endpointParams: EndpointParams

    let authSchemeResolver: ClientRuntime.EndpointsAuthSchemeResolver

    public init(endpointResolver: EndpointResolver, endpointParams: EndpointParams, authSchemeResolver: ClientRuntime.EndpointsAuthSchemeResolver = ClientRuntime.DefaultEndpointsAuthSchemeResolver()) {
        self.endpointResolver = endpointResolver
        self.endpointParams = endpointParams
        self.authSchemeResolver = authSchemeResolver
    }

    public func handle<H>(context: Smithy.Context,
                  input: SmithyHTTPAPI.SdkHttpRequestBuilder,
                  next: H) async throws -> ClientRuntime.OperationOutput<OperationStackOutput>
    where H: Handler,
    Self.MInput == H.Input,
    Self.MOutput == H.Output
    {
        let selectedAuthScheme = context.selectedAuthScheme
        let request = input.build()
        let updatedRequest = try await apply(request: request, selectedAuthScheme: selectedAuthScheme, attributes: context)
        return try await next.handle(context: context, input: updatedRequest.toBuilder())
    }

    public typealias MInput = SmithyHTTPAPI.SdkHttpRequestBuilder
    public typealias MOutput = ClientRuntime.OperationOutput<OperationStackOutput>
}
"""
        contents.shouldContainOnlyOnce(expected)
    }
}
