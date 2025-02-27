// Code generated by smithy-swift-codegen. DO NOT EDIT!

import ClientRuntime
import protocol ClientRuntime.PaginateToken
import struct ClientRuntime.PaginatorSequence

extension MigrationHubStrategyClient {
    /// Paginate over `[GetServerDetailsOutput]` results.
    ///
    /// When this operation is called, an `AsyncSequence` is created. AsyncSequences are lazy so no service
    /// calls are made until the sequence is iterated over. This also means there is no guarantee that the request is valid
    /// until then. If there are errors in your request, you will see the failures only after you start iterating.
    /// - Parameters:
    ///     - input: A `[GetServerDetailsInput]` to start pagination
    /// - Returns: An `AsyncSequence` that can iterate over `GetServerDetailsOutput`
    public func getServerDetailsPaginated(input: GetServerDetailsInput) -> ClientRuntime.PaginatorSequence<GetServerDetailsInput, GetServerDetailsOutput> {
        return ClientRuntime.PaginatorSequence<GetServerDetailsInput, GetServerDetailsOutput>(input: input, inputKey: \.nextToken, outputKey: \.nextToken, paginationFunction: self.getServerDetails(input:))
    }
}

extension GetServerDetailsInput: ClientRuntime.PaginateToken {
    public func usingPaginationToken(_ token: Swift.String) -> GetServerDetailsInput {
        return GetServerDetailsInput(
            maxResults: self.maxResults,
            nextToken: token,
            serverId: self.serverId
        )}
}

extension PaginatorSequence where OperationStackInput == GetServerDetailsInput, OperationStackOutput == GetServerDetailsOutput {
    /// This paginator transforms the `AsyncSequence` returned by `getServerDetailsPaginated`
    /// to access the nested member `[MigrationHubStrategyClientTypes.AssociatedApplication]`
    /// - Returns: `[MigrationHubStrategyClientTypes.AssociatedApplication]`
    public func associatedApplications() async throws -> [MigrationHubStrategyClientTypes.AssociatedApplication] {
        return try await self.asyncCompactMap { item in item.associatedApplications }
    }
}
extension MigrationHubStrategyClient {
    /// Paginate over `[ListAnalyzableServersOutput]` results.
    ///
    /// When this operation is called, an `AsyncSequence` is created. AsyncSequences are lazy so no service
    /// calls are made until the sequence is iterated over. This also means there is no guarantee that the request is valid
    /// until then. If there are errors in your request, you will see the failures only after you start iterating.
    /// - Parameters:
    ///     - input: A `[ListAnalyzableServersInput]` to start pagination
    /// - Returns: An `AsyncSequence` that can iterate over `ListAnalyzableServersOutput`
    public func listAnalyzableServersPaginated(input: ListAnalyzableServersInput) -> ClientRuntime.PaginatorSequence<ListAnalyzableServersInput, ListAnalyzableServersOutput> {
        return ClientRuntime.PaginatorSequence<ListAnalyzableServersInput, ListAnalyzableServersOutput>(input: input, inputKey: \.nextToken, outputKey: \.nextToken, paginationFunction: self.listAnalyzableServers(input:))
    }
}

extension ListAnalyzableServersInput: ClientRuntime.PaginateToken {
    public func usingPaginationToken(_ token: Swift.String) -> ListAnalyzableServersInput {
        return ListAnalyzableServersInput(
            maxResults: self.maxResults,
            nextToken: token,
            sort: self.sort
        )}
}

extension PaginatorSequence where OperationStackInput == ListAnalyzableServersInput, OperationStackOutput == ListAnalyzableServersOutput {
    /// This paginator transforms the `AsyncSequence` returned by `listAnalyzableServersPaginated`
    /// to access the nested member `[MigrationHubStrategyClientTypes.AnalyzableServerSummary]`
    /// - Returns: `[MigrationHubStrategyClientTypes.AnalyzableServerSummary]`
    public func analyzableServers() async throws -> [MigrationHubStrategyClientTypes.AnalyzableServerSummary] {
        return try await self.asyncCompactMap { item in item.analyzableServers }
    }
}
extension MigrationHubStrategyClient {
    /// Paginate over `[ListApplicationComponentsOutput]` results.
    ///
    /// When this operation is called, an `AsyncSequence` is created. AsyncSequences are lazy so no service
    /// calls are made until the sequence is iterated over. This also means there is no guarantee that the request is valid
    /// until then. If there are errors in your request, you will see the failures only after you start iterating.
    /// - Parameters:
    ///     - input: A `[ListApplicationComponentsInput]` to start pagination
    /// - Returns: An `AsyncSequence` that can iterate over `ListApplicationComponentsOutput`
    public func listApplicationComponentsPaginated(input: ListApplicationComponentsInput) -> ClientRuntime.PaginatorSequence<ListApplicationComponentsInput, ListApplicationComponentsOutput> {
        return ClientRuntime.PaginatorSequence<ListApplicationComponentsInput, ListApplicationComponentsOutput>(input: input, inputKey: \.nextToken, outputKey: \.nextToken, paginationFunction: self.listApplicationComponents(input:))
    }
}

extension ListApplicationComponentsInput: ClientRuntime.PaginateToken {
    public func usingPaginationToken(_ token: Swift.String) -> ListApplicationComponentsInput {
        return ListApplicationComponentsInput(
            applicationComponentCriteria: self.applicationComponentCriteria,
            filterValue: self.filterValue,
            groupIdFilter: self.groupIdFilter,
            maxResults: self.maxResults,
            nextToken: token,
            sort: self.sort
        )}
}

extension PaginatorSequence where OperationStackInput == ListApplicationComponentsInput, OperationStackOutput == ListApplicationComponentsOutput {
    /// This paginator transforms the `AsyncSequence` returned by `listApplicationComponentsPaginated`
    /// to access the nested member `[MigrationHubStrategyClientTypes.ApplicationComponentDetail]`
    /// - Returns: `[MigrationHubStrategyClientTypes.ApplicationComponentDetail]`
    public func applicationComponentInfos() async throws -> [MigrationHubStrategyClientTypes.ApplicationComponentDetail] {
        return try await self.asyncCompactMap { item in item.applicationComponentInfos }
    }
}
extension MigrationHubStrategyClient {
    /// Paginate over `[ListCollectorsOutput]` results.
    ///
    /// When this operation is called, an `AsyncSequence` is created. AsyncSequences are lazy so no service
    /// calls are made until the sequence is iterated over. This also means there is no guarantee that the request is valid
    /// until then. If there are errors in your request, you will see the failures only after you start iterating.
    /// - Parameters:
    ///     - input: A `[ListCollectorsInput]` to start pagination
    /// - Returns: An `AsyncSequence` that can iterate over `ListCollectorsOutput`
    public func listCollectorsPaginated(input: ListCollectorsInput) -> ClientRuntime.PaginatorSequence<ListCollectorsInput, ListCollectorsOutput> {
        return ClientRuntime.PaginatorSequence<ListCollectorsInput, ListCollectorsOutput>(input: input, inputKey: \.nextToken, outputKey: \.nextToken, paginationFunction: self.listCollectors(input:))
    }
}

extension ListCollectorsInput: ClientRuntime.PaginateToken {
    public func usingPaginationToken(_ token: Swift.String) -> ListCollectorsInput {
        return ListCollectorsInput(
            maxResults: self.maxResults,
            nextToken: token
        )}
}

extension PaginatorSequence where OperationStackInput == ListCollectorsInput, OperationStackOutput == ListCollectorsOutput {
    /// This paginator transforms the `AsyncSequence` returned by `listCollectorsPaginated`
    /// to access the nested member `[MigrationHubStrategyClientTypes.Collector]`
    /// - Returns: `[MigrationHubStrategyClientTypes.Collector]`
    public func collectors() async throws -> [MigrationHubStrategyClientTypes.Collector] {
        return try await self.asyncCompactMap { item in item.collectors }
    }
}
extension MigrationHubStrategyClient {
    /// Paginate over `[ListImportFileTaskOutput]` results.
    ///
    /// When this operation is called, an `AsyncSequence` is created. AsyncSequences are lazy so no service
    /// calls are made until the sequence is iterated over. This also means there is no guarantee that the request is valid
    /// until then. If there are errors in your request, you will see the failures only after you start iterating.
    /// - Parameters:
    ///     - input: A `[ListImportFileTaskInput]` to start pagination
    /// - Returns: An `AsyncSequence` that can iterate over `ListImportFileTaskOutput`
    public func listImportFileTaskPaginated(input: ListImportFileTaskInput) -> ClientRuntime.PaginatorSequence<ListImportFileTaskInput, ListImportFileTaskOutput> {
        return ClientRuntime.PaginatorSequence<ListImportFileTaskInput, ListImportFileTaskOutput>(input: input, inputKey: \.nextToken, outputKey: \.nextToken, paginationFunction: self.listImportFileTask(input:))
    }
}

extension ListImportFileTaskInput: ClientRuntime.PaginateToken {
    public func usingPaginationToken(_ token: Swift.String) -> ListImportFileTaskInput {
        return ListImportFileTaskInput(
            maxResults: self.maxResults,
            nextToken: token
        )}
}

extension PaginatorSequence where OperationStackInput == ListImportFileTaskInput, OperationStackOutput == ListImportFileTaskOutput {
    /// This paginator transforms the `AsyncSequence` returned by `listImportFileTaskPaginated`
    /// to access the nested member `[MigrationHubStrategyClientTypes.ImportFileTaskInformation]`
    /// - Returns: `[MigrationHubStrategyClientTypes.ImportFileTaskInformation]`
    public func taskInfos() async throws -> [MigrationHubStrategyClientTypes.ImportFileTaskInformation] {
        return try await self.asyncCompactMap { item in item.taskInfos }
    }
}
extension MigrationHubStrategyClient {
    /// Paginate over `[ListServersOutput]` results.
    ///
    /// When this operation is called, an `AsyncSequence` is created. AsyncSequences are lazy so no service
    /// calls are made until the sequence is iterated over. This also means there is no guarantee that the request is valid
    /// until then. If there are errors in your request, you will see the failures only after you start iterating.
    /// - Parameters:
    ///     - input: A `[ListServersInput]` to start pagination
    /// - Returns: An `AsyncSequence` that can iterate over `ListServersOutput`
    public func listServersPaginated(input: ListServersInput) -> ClientRuntime.PaginatorSequence<ListServersInput, ListServersOutput> {
        return ClientRuntime.PaginatorSequence<ListServersInput, ListServersOutput>(input: input, inputKey: \.nextToken, outputKey: \.nextToken, paginationFunction: self.listServers(input:))
    }
}

extension ListServersInput: ClientRuntime.PaginateToken {
    public func usingPaginationToken(_ token: Swift.String) -> ListServersInput {
        return ListServersInput(
            filterValue: self.filterValue,
            groupIdFilter: self.groupIdFilter,
            maxResults: self.maxResults,
            nextToken: token,
            serverCriteria: self.serverCriteria,
            sort: self.sort
        )}
}

extension PaginatorSequence where OperationStackInput == ListServersInput, OperationStackOutput == ListServersOutput {
    /// This paginator transforms the `AsyncSequence` returned by `listServersPaginated`
    /// to access the nested member `[MigrationHubStrategyClientTypes.ServerDetail]`
    /// - Returns: `[MigrationHubStrategyClientTypes.ServerDetail]`
    public func serverInfos() async throws -> [MigrationHubStrategyClientTypes.ServerDetail] {
        return try await self.asyncCompactMap { item in item.serverInfos }
    }
}
