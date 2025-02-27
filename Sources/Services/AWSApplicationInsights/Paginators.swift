// Code generated by smithy-swift-codegen. DO NOT EDIT!

import ClientRuntime
import protocol ClientRuntime.PaginateToken
import struct ClientRuntime.PaginatorSequence

extension ApplicationInsightsClient {
    /// Paginate over `[ListApplicationsOutput]` results.
    ///
    /// When this operation is called, an `AsyncSequence` is created. AsyncSequences are lazy so no service
    /// calls are made until the sequence is iterated over. This also means there is no guarantee that the request is valid
    /// until then. If there are errors in your request, you will see the failures only after you start iterating.
    /// - Parameters:
    ///     - input: A `[ListApplicationsInput]` to start pagination
    /// - Returns: An `AsyncSequence` that can iterate over `ListApplicationsOutput`
    public func listApplicationsPaginated(input: ListApplicationsInput) -> ClientRuntime.PaginatorSequence<ListApplicationsInput, ListApplicationsOutput> {
        return ClientRuntime.PaginatorSequence<ListApplicationsInput, ListApplicationsOutput>(input: input, inputKey: \.nextToken, outputKey: \.nextToken, paginationFunction: self.listApplications(input:))
    }
}

extension ListApplicationsInput: ClientRuntime.PaginateToken {
    public func usingPaginationToken(_ token: Swift.String) -> ListApplicationsInput {
        return ListApplicationsInput(
            accountId: self.accountId,
            maxResults: self.maxResults,
            nextToken: token
        )}
}
extension ApplicationInsightsClient {
    /// Paginate over `[ListComponentsOutput]` results.
    ///
    /// When this operation is called, an `AsyncSequence` is created. AsyncSequences are lazy so no service
    /// calls are made until the sequence is iterated over. This also means there is no guarantee that the request is valid
    /// until then. If there are errors in your request, you will see the failures only after you start iterating.
    /// - Parameters:
    ///     - input: A `[ListComponentsInput]` to start pagination
    /// - Returns: An `AsyncSequence` that can iterate over `ListComponentsOutput`
    public func listComponentsPaginated(input: ListComponentsInput) -> ClientRuntime.PaginatorSequence<ListComponentsInput, ListComponentsOutput> {
        return ClientRuntime.PaginatorSequence<ListComponentsInput, ListComponentsOutput>(input: input, inputKey: \.nextToken, outputKey: \.nextToken, paginationFunction: self.listComponents(input:))
    }
}

extension ListComponentsInput: ClientRuntime.PaginateToken {
    public func usingPaginationToken(_ token: Swift.String) -> ListComponentsInput {
        return ListComponentsInput(
            accountId: self.accountId,
            maxResults: self.maxResults,
            nextToken: token,
            resourceGroupName: self.resourceGroupName
        )}
}
extension ApplicationInsightsClient {
    /// Paginate over `[ListConfigurationHistoryOutput]` results.
    ///
    /// When this operation is called, an `AsyncSequence` is created. AsyncSequences are lazy so no service
    /// calls are made until the sequence is iterated over. This also means there is no guarantee that the request is valid
    /// until then. If there are errors in your request, you will see the failures only after you start iterating.
    /// - Parameters:
    ///     - input: A `[ListConfigurationHistoryInput]` to start pagination
    /// - Returns: An `AsyncSequence` that can iterate over `ListConfigurationHistoryOutput`
    public func listConfigurationHistoryPaginated(input: ListConfigurationHistoryInput) -> ClientRuntime.PaginatorSequence<ListConfigurationHistoryInput, ListConfigurationHistoryOutput> {
        return ClientRuntime.PaginatorSequence<ListConfigurationHistoryInput, ListConfigurationHistoryOutput>(input: input, inputKey: \.nextToken, outputKey: \.nextToken, paginationFunction: self.listConfigurationHistory(input:))
    }
}

extension ListConfigurationHistoryInput: ClientRuntime.PaginateToken {
    public func usingPaginationToken(_ token: Swift.String) -> ListConfigurationHistoryInput {
        return ListConfigurationHistoryInput(
            accountId: self.accountId,
            endTime: self.endTime,
            eventStatus: self.eventStatus,
            maxResults: self.maxResults,
            nextToken: token,
            resourceGroupName: self.resourceGroupName,
            startTime: self.startTime
        )}
}
extension ApplicationInsightsClient {
    /// Paginate over `[ListLogPatternsOutput]` results.
    ///
    /// When this operation is called, an `AsyncSequence` is created. AsyncSequences are lazy so no service
    /// calls are made until the sequence is iterated over. This also means there is no guarantee that the request is valid
    /// until then. If there are errors in your request, you will see the failures only after you start iterating.
    /// - Parameters:
    ///     - input: A `[ListLogPatternsInput]` to start pagination
    /// - Returns: An `AsyncSequence` that can iterate over `ListLogPatternsOutput`
    public func listLogPatternsPaginated(input: ListLogPatternsInput) -> ClientRuntime.PaginatorSequence<ListLogPatternsInput, ListLogPatternsOutput> {
        return ClientRuntime.PaginatorSequence<ListLogPatternsInput, ListLogPatternsOutput>(input: input, inputKey: \.nextToken, outputKey: \.nextToken, paginationFunction: self.listLogPatterns(input:))
    }
}

extension ListLogPatternsInput: ClientRuntime.PaginateToken {
    public func usingPaginationToken(_ token: Swift.String) -> ListLogPatternsInput {
        return ListLogPatternsInput(
            accountId: self.accountId,
            maxResults: self.maxResults,
            nextToken: token,
            patternSetName: self.patternSetName,
            resourceGroupName: self.resourceGroupName
        )}
}
extension ApplicationInsightsClient {
    /// Paginate over `[ListLogPatternSetsOutput]` results.
    ///
    /// When this operation is called, an `AsyncSequence` is created. AsyncSequences are lazy so no service
    /// calls are made until the sequence is iterated over. This also means there is no guarantee that the request is valid
    /// until then. If there are errors in your request, you will see the failures only after you start iterating.
    /// - Parameters:
    ///     - input: A `[ListLogPatternSetsInput]` to start pagination
    /// - Returns: An `AsyncSequence` that can iterate over `ListLogPatternSetsOutput`
    public func listLogPatternSetsPaginated(input: ListLogPatternSetsInput) -> ClientRuntime.PaginatorSequence<ListLogPatternSetsInput, ListLogPatternSetsOutput> {
        return ClientRuntime.PaginatorSequence<ListLogPatternSetsInput, ListLogPatternSetsOutput>(input: input, inputKey: \.nextToken, outputKey: \.nextToken, paginationFunction: self.listLogPatternSets(input:))
    }
}

extension ListLogPatternSetsInput: ClientRuntime.PaginateToken {
    public func usingPaginationToken(_ token: Swift.String) -> ListLogPatternSetsInput {
        return ListLogPatternSetsInput(
            accountId: self.accountId,
            maxResults: self.maxResults,
            nextToken: token,
            resourceGroupName: self.resourceGroupName
        )}
}
extension ApplicationInsightsClient {
    /// Paginate over `[ListProblemsOutput]` results.
    ///
    /// When this operation is called, an `AsyncSequence` is created. AsyncSequences are lazy so no service
    /// calls are made until the sequence is iterated over. This also means there is no guarantee that the request is valid
    /// until then. If there are errors in your request, you will see the failures only after you start iterating.
    /// - Parameters:
    ///     - input: A `[ListProblemsInput]` to start pagination
    /// - Returns: An `AsyncSequence` that can iterate over `ListProblemsOutput`
    public func listProblemsPaginated(input: ListProblemsInput) -> ClientRuntime.PaginatorSequence<ListProblemsInput, ListProblemsOutput> {
        return ClientRuntime.PaginatorSequence<ListProblemsInput, ListProblemsOutput>(input: input, inputKey: \.nextToken, outputKey: \.nextToken, paginationFunction: self.listProblems(input:))
    }
}

extension ListProblemsInput: ClientRuntime.PaginateToken {
    public func usingPaginationToken(_ token: Swift.String) -> ListProblemsInput {
        return ListProblemsInput(
            accountId: self.accountId,
            componentName: self.componentName,
            endTime: self.endTime,
            maxResults: self.maxResults,
            nextToken: token,
            resourceGroupName: self.resourceGroupName,
            startTime: self.startTime,
            visibility: self.visibility
        )}
}
extension ApplicationInsightsClient {
    /// Paginate over `[ListWorkloadsOutput]` results.
    ///
    /// When this operation is called, an `AsyncSequence` is created. AsyncSequences are lazy so no service
    /// calls are made until the sequence is iterated over. This also means there is no guarantee that the request is valid
    /// until then. If there are errors in your request, you will see the failures only after you start iterating.
    /// - Parameters:
    ///     - input: A `[ListWorkloadsInput]` to start pagination
    /// - Returns: An `AsyncSequence` that can iterate over `ListWorkloadsOutput`
    public func listWorkloadsPaginated(input: ListWorkloadsInput) -> ClientRuntime.PaginatorSequence<ListWorkloadsInput, ListWorkloadsOutput> {
        return ClientRuntime.PaginatorSequence<ListWorkloadsInput, ListWorkloadsOutput>(input: input, inputKey: \.nextToken, outputKey: \.nextToken, paginationFunction: self.listWorkloads(input:))
    }
}

extension ListWorkloadsInput: ClientRuntime.PaginateToken {
    public func usingPaginationToken(_ token: Swift.String) -> ListWorkloadsInput {
        return ListWorkloadsInput(
            accountId: self.accountId,
            componentName: self.componentName,
            maxResults: self.maxResults,
            nextToken: token,
            resourceGroupName: self.resourceGroupName
        )}
}
