// Code generated by smithy-swift-codegen. DO NOT EDIT!

import ClientRuntime
import protocol ClientRuntime.PaginateToken
import struct ClientRuntime.PaginatorSequence

extension ECRPUBLICClient {
    /// Paginate over `[DescribeImagesOutput]` results.
    ///
    /// When this operation is called, an `AsyncSequence` is created. AsyncSequences are lazy so no service
    /// calls are made until the sequence is iterated over. This also means there is no guarantee that the request is valid
    /// until then. If there are errors in your request, you will see the failures only after you start iterating.
    /// - Parameters:
    ///     - input: A `[DescribeImagesInput]` to start pagination
    /// - Returns: An `AsyncSequence` that can iterate over `DescribeImagesOutput`
    public func describeImagesPaginated(input: DescribeImagesInput) -> ClientRuntime.PaginatorSequence<DescribeImagesInput, DescribeImagesOutput> {
        return ClientRuntime.PaginatorSequence<DescribeImagesInput, DescribeImagesOutput>(input: input, inputKey: \.nextToken, outputKey: \.nextToken, paginationFunction: self.describeImages(input:))
    }
}

extension DescribeImagesInput: ClientRuntime.PaginateToken {
    public func usingPaginationToken(_ token: Swift.String) -> DescribeImagesInput {
        return DescribeImagesInput(
            imageIds: self.imageIds,
            maxResults: self.maxResults,
            nextToken: token,
            registryId: self.registryId,
            repositoryName: self.repositoryName
        )}
}

extension PaginatorSequence where OperationStackInput == DescribeImagesInput, OperationStackOutput == DescribeImagesOutput {
    /// This paginator transforms the `AsyncSequence` returned by `describeImagesPaginated`
    /// to access the nested member `[ECRPUBLICClientTypes.ImageDetail]`
    /// - Returns: `[ECRPUBLICClientTypes.ImageDetail]`
    public func imageDetails() async throws -> [ECRPUBLICClientTypes.ImageDetail] {
        return try await self.asyncCompactMap { item in item.imageDetails }
    }
}
extension ECRPUBLICClient {
    /// Paginate over `[DescribeImageTagsOutput]` results.
    ///
    /// When this operation is called, an `AsyncSequence` is created. AsyncSequences are lazy so no service
    /// calls are made until the sequence is iterated over. This also means there is no guarantee that the request is valid
    /// until then. If there are errors in your request, you will see the failures only after you start iterating.
    /// - Parameters:
    ///     - input: A `[DescribeImageTagsInput]` to start pagination
    /// - Returns: An `AsyncSequence` that can iterate over `DescribeImageTagsOutput`
    public func describeImageTagsPaginated(input: DescribeImageTagsInput) -> ClientRuntime.PaginatorSequence<DescribeImageTagsInput, DescribeImageTagsOutput> {
        return ClientRuntime.PaginatorSequence<DescribeImageTagsInput, DescribeImageTagsOutput>(input: input, inputKey: \.nextToken, outputKey: \.nextToken, paginationFunction: self.describeImageTags(input:))
    }
}

extension DescribeImageTagsInput: ClientRuntime.PaginateToken {
    public func usingPaginationToken(_ token: Swift.String) -> DescribeImageTagsInput {
        return DescribeImageTagsInput(
            maxResults: self.maxResults,
            nextToken: token,
            registryId: self.registryId,
            repositoryName: self.repositoryName
        )}
}

extension PaginatorSequence where OperationStackInput == DescribeImageTagsInput, OperationStackOutput == DescribeImageTagsOutput {
    /// This paginator transforms the `AsyncSequence` returned by `describeImageTagsPaginated`
    /// to access the nested member `[ECRPUBLICClientTypes.ImageTagDetail]`
    /// - Returns: `[ECRPUBLICClientTypes.ImageTagDetail]`
    public func imageTagDetails() async throws -> [ECRPUBLICClientTypes.ImageTagDetail] {
        return try await self.asyncCompactMap { item in item.imageTagDetails }
    }
}
extension ECRPUBLICClient {
    /// Paginate over `[DescribeRegistriesOutput]` results.
    ///
    /// When this operation is called, an `AsyncSequence` is created. AsyncSequences are lazy so no service
    /// calls are made until the sequence is iterated over. This also means there is no guarantee that the request is valid
    /// until then. If there are errors in your request, you will see the failures only after you start iterating.
    /// - Parameters:
    ///     - input: A `[DescribeRegistriesInput]` to start pagination
    /// - Returns: An `AsyncSequence` that can iterate over `DescribeRegistriesOutput`
    public func describeRegistriesPaginated(input: DescribeRegistriesInput) -> ClientRuntime.PaginatorSequence<DescribeRegistriesInput, DescribeRegistriesOutput> {
        return ClientRuntime.PaginatorSequence<DescribeRegistriesInput, DescribeRegistriesOutput>(input: input, inputKey: \.nextToken, outputKey: \.nextToken, paginationFunction: self.describeRegistries(input:))
    }
}

extension DescribeRegistriesInput: ClientRuntime.PaginateToken {
    public func usingPaginationToken(_ token: Swift.String) -> DescribeRegistriesInput {
        return DescribeRegistriesInput(
            maxResults: self.maxResults,
            nextToken: token
        )}
}

extension PaginatorSequence where OperationStackInput == DescribeRegistriesInput, OperationStackOutput == DescribeRegistriesOutput {
    /// This paginator transforms the `AsyncSequence` returned by `describeRegistriesPaginated`
    /// to access the nested member `[ECRPUBLICClientTypes.Registry]`
    /// - Returns: `[ECRPUBLICClientTypes.Registry]`
    public func registries() async throws -> [ECRPUBLICClientTypes.Registry] {
        return try await self.asyncCompactMap { item in item.registries }
    }
}
extension ECRPUBLICClient {
    /// Paginate over `[DescribeRepositoriesOutput]` results.
    ///
    /// When this operation is called, an `AsyncSequence` is created. AsyncSequences are lazy so no service
    /// calls are made until the sequence is iterated over. This also means there is no guarantee that the request is valid
    /// until then. If there are errors in your request, you will see the failures only after you start iterating.
    /// - Parameters:
    ///     - input: A `[DescribeRepositoriesInput]` to start pagination
    /// - Returns: An `AsyncSequence` that can iterate over `DescribeRepositoriesOutput`
    public func describeRepositoriesPaginated(input: DescribeRepositoriesInput) -> ClientRuntime.PaginatorSequence<DescribeRepositoriesInput, DescribeRepositoriesOutput> {
        return ClientRuntime.PaginatorSequence<DescribeRepositoriesInput, DescribeRepositoriesOutput>(input: input, inputKey: \.nextToken, outputKey: \.nextToken, paginationFunction: self.describeRepositories(input:))
    }
}

extension DescribeRepositoriesInput: ClientRuntime.PaginateToken {
    public func usingPaginationToken(_ token: Swift.String) -> DescribeRepositoriesInput {
        return DescribeRepositoriesInput(
            maxResults: self.maxResults,
            nextToken: token,
            registryId: self.registryId,
            repositoryNames: self.repositoryNames
        )}
}

extension PaginatorSequence where OperationStackInput == DescribeRepositoriesInput, OperationStackOutput == DescribeRepositoriesOutput {
    /// This paginator transforms the `AsyncSequence` returned by `describeRepositoriesPaginated`
    /// to access the nested member `[ECRPUBLICClientTypes.Repository]`
    /// - Returns: `[ECRPUBLICClientTypes.Repository]`
    public func repositories() async throws -> [ECRPUBLICClientTypes.Repository] {
        return try await self.asyncCompactMap { item in item.repositories }
    }
}
