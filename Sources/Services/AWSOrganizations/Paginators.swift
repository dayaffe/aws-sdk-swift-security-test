// Code generated by smithy-swift-codegen. DO NOT EDIT!

import ClientRuntime
import protocol ClientRuntime.PaginateToken
import struct ClientRuntime.PaginatorSequence

extension OrganizationsClient {
    /// Paginate over `[ListAccountsOutput]` results.
    ///
    /// When this operation is called, an `AsyncSequence` is created. AsyncSequences are lazy so no service
    /// calls are made until the sequence is iterated over. This also means there is no guarantee that the request is valid
    /// until then. If there are errors in your request, you will see the failures only after you start iterating.
    /// - Parameters:
    ///     - input: A `[ListAccountsInput]` to start pagination
    /// - Returns: An `AsyncSequence` that can iterate over `ListAccountsOutput`
    public func listAccountsPaginated(input: ListAccountsInput) -> ClientRuntime.PaginatorSequence<ListAccountsInput, ListAccountsOutput> {
        return ClientRuntime.PaginatorSequence<ListAccountsInput, ListAccountsOutput>(input: input, inputKey: \.nextToken, outputKey: \.nextToken, paginationFunction: self.listAccounts(input:))
    }
}

extension ListAccountsInput: ClientRuntime.PaginateToken {
    public func usingPaginationToken(_ token: Swift.String) -> ListAccountsInput {
        return ListAccountsInput(
            maxResults: self.maxResults,
            nextToken: token
        )}
}
extension OrganizationsClient {
    /// Paginate over `[ListAccountsForParentOutput]` results.
    ///
    /// When this operation is called, an `AsyncSequence` is created. AsyncSequences are lazy so no service
    /// calls are made until the sequence is iterated over. This also means there is no guarantee that the request is valid
    /// until then. If there are errors in your request, you will see the failures only after you start iterating.
    /// - Parameters:
    ///     - input: A `[ListAccountsForParentInput]` to start pagination
    /// - Returns: An `AsyncSequence` that can iterate over `ListAccountsForParentOutput`
    public func listAccountsForParentPaginated(input: ListAccountsForParentInput) -> ClientRuntime.PaginatorSequence<ListAccountsForParentInput, ListAccountsForParentOutput> {
        return ClientRuntime.PaginatorSequence<ListAccountsForParentInput, ListAccountsForParentOutput>(input: input, inputKey: \.nextToken, outputKey: \.nextToken, paginationFunction: self.listAccountsForParent(input:))
    }
}

extension ListAccountsForParentInput: ClientRuntime.PaginateToken {
    public func usingPaginationToken(_ token: Swift.String) -> ListAccountsForParentInput {
        return ListAccountsForParentInput(
            maxResults: self.maxResults,
            nextToken: token,
            parentId: self.parentId
        )}
}
extension OrganizationsClient {
    /// Paginate over `[ListAWSServiceAccessForOrganizationOutput]` results.
    ///
    /// When this operation is called, an `AsyncSequence` is created. AsyncSequences are lazy so no service
    /// calls are made until the sequence is iterated over. This also means there is no guarantee that the request is valid
    /// until then. If there are errors in your request, you will see the failures only after you start iterating.
    /// - Parameters:
    ///     - input: A `[ListAWSServiceAccessForOrganizationInput]` to start pagination
    /// - Returns: An `AsyncSequence` that can iterate over `ListAWSServiceAccessForOrganizationOutput`
    public func listAWSServiceAccessForOrganizationPaginated(input: ListAWSServiceAccessForOrganizationInput) -> ClientRuntime.PaginatorSequence<ListAWSServiceAccessForOrganizationInput, ListAWSServiceAccessForOrganizationOutput> {
        return ClientRuntime.PaginatorSequence<ListAWSServiceAccessForOrganizationInput, ListAWSServiceAccessForOrganizationOutput>(input: input, inputKey: \.nextToken, outputKey: \.nextToken, paginationFunction: self.listAWSServiceAccessForOrganization(input:))
    }
}

extension ListAWSServiceAccessForOrganizationInput: ClientRuntime.PaginateToken {
    public func usingPaginationToken(_ token: Swift.String) -> ListAWSServiceAccessForOrganizationInput {
        return ListAWSServiceAccessForOrganizationInput(
            maxResults: self.maxResults,
            nextToken: token
        )}
}
extension OrganizationsClient {
    /// Paginate over `[ListChildrenOutput]` results.
    ///
    /// When this operation is called, an `AsyncSequence` is created. AsyncSequences are lazy so no service
    /// calls are made until the sequence is iterated over. This also means there is no guarantee that the request is valid
    /// until then. If there are errors in your request, you will see the failures only after you start iterating.
    /// - Parameters:
    ///     - input: A `[ListChildrenInput]` to start pagination
    /// - Returns: An `AsyncSequence` that can iterate over `ListChildrenOutput`
    public func listChildrenPaginated(input: ListChildrenInput) -> ClientRuntime.PaginatorSequence<ListChildrenInput, ListChildrenOutput> {
        return ClientRuntime.PaginatorSequence<ListChildrenInput, ListChildrenOutput>(input: input, inputKey: \.nextToken, outputKey: \.nextToken, paginationFunction: self.listChildren(input:))
    }
}

extension ListChildrenInput: ClientRuntime.PaginateToken {
    public func usingPaginationToken(_ token: Swift.String) -> ListChildrenInput {
        return ListChildrenInput(
            childType: self.childType,
            maxResults: self.maxResults,
            nextToken: token,
            parentId: self.parentId
        )}
}
extension OrganizationsClient {
    /// Paginate over `[ListCreateAccountStatusOutput]` results.
    ///
    /// When this operation is called, an `AsyncSequence` is created. AsyncSequences are lazy so no service
    /// calls are made until the sequence is iterated over. This also means there is no guarantee that the request is valid
    /// until then. If there are errors in your request, you will see the failures only after you start iterating.
    /// - Parameters:
    ///     - input: A `[ListCreateAccountStatusInput]` to start pagination
    /// - Returns: An `AsyncSequence` that can iterate over `ListCreateAccountStatusOutput`
    public func listCreateAccountStatusPaginated(input: ListCreateAccountStatusInput) -> ClientRuntime.PaginatorSequence<ListCreateAccountStatusInput, ListCreateAccountStatusOutput> {
        return ClientRuntime.PaginatorSequence<ListCreateAccountStatusInput, ListCreateAccountStatusOutput>(input: input, inputKey: \.nextToken, outputKey: \.nextToken, paginationFunction: self.listCreateAccountStatus(input:))
    }
}

extension ListCreateAccountStatusInput: ClientRuntime.PaginateToken {
    public func usingPaginationToken(_ token: Swift.String) -> ListCreateAccountStatusInput {
        return ListCreateAccountStatusInput(
            maxResults: self.maxResults,
            nextToken: token,
            states: self.states
        )}
}
extension OrganizationsClient {
    /// Paginate over `[ListDelegatedAdministratorsOutput]` results.
    ///
    /// When this operation is called, an `AsyncSequence` is created. AsyncSequences are lazy so no service
    /// calls are made until the sequence is iterated over. This also means there is no guarantee that the request is valid
    /// until then. If there are errors in your request, you will see the failures only after you start iterating.
    /// - Parameters:
    ///     - input: A `[ListDelegatedAdministratorsInput]` to start pagination
    /// - Returns: An `AsyncSequence` that can iterate over `ListDelegatedAdministratorsOutput`
    public func listDelegatedAdministratorsPaginated(input: ListDelegatedAdministratorsInput) -> ClientRuntime.PaginatorSequence<ListDelegatedAdministratorsInput, ListDelegatedAdministratorsOutput> {
        return ClientRuntime.PaginatorSequence<ListDelegatedAdministratorsInput, ListDelegatedAdministratorsOutput>(input: input, inputKey: \.nextToken, outputKey: \.nextToken, paginationFunction: self.listDelegatedAdministrators(input:))
    }
}

extension ListDelegatedAdministratorsInput: ClientRuntime.PaginateToken {
    public func usingPaginationToken(_ token: Swift.String) -> ListDelegatedAdministratorsInput {
        return ListDelegatedAdministratorsInput(
            maxResults: self.maxResults,
            nextToken: token,
            servicePrincipal: self.servicePrincipal
        )}
}

extension PaginatorSequence where OperationStackInput == ListDelegatedAdministratorsInput, OperationStackOutput == ListDelegatedAdministratorsOutput {
    /// This paginator transforms the `AsyncSequence` returned by `listDelegatedAdministratorsPaginated`
    /// to access the nested member `[OrganizationsClientTypes.DelegatedAdministrator]`
    /// - Returns: `[OrganizationsClientTypes.DelegatedAdministrator]`
    public func delegatedAdministrators() async throws -> [OrganizationsClientTypes.DelegatedAdministrator] {
        return try await self.asyncCompactMap { item in item.delegatedAdministrators }
    }
}
extension OrganizationsClient {
    /// Paginate over `[ListDelegatedServicesForAccountOutput]` results.
    ///
    /// When this operation is called, an `AsyncSequence` is created. AsyncSequences are lazy so no service
    /// calls are made until the sequence is iterated over. This also means there is no guarantee that the request is valid
    /// until then. If there are errors in your request, you will see the failures only after you start iterating.
    /// - Parameters:
    ///     - input: A `[ListDelegatedServicesForAccountInput]` to start pagination
    /// - Returns: An `AsyncSequence` that can iterate over `ListDelegatedServicesForAccountOutput`
    public func listDelegatedServicesForAccountPaginated(input: ListDelegatedServicesForAccountInput) -> ClientRuntime.PaginatorSequence<ListDelegatedServicesForAccountInput, ListDelegatedServicesForAccountOutput> {
        return ClientRuntime.PaginatorSequence<ListDelegatedServicesForAccountInput, ListDelegatedServicesForAccountOutput>(input: input, inputKey: \.nextToken, outputKey: \.nextToken, paginationFunction: self.listDelegatedServicesForAccount(input:))
    }
}

extension ListDelegatedServicesForAccountInput: ClientRuntime.PaginateToken {
    public func usingPaginationToken(_ token: Swift.String) -> ListDelegatedServicesForAccountInput {
        return ListDelegatedServicesForAccountInput(
            accountId: self.accountId,
            maxResults: self.maxResults,
            nextToken: token
        )}
}

extension PaginatorSequence where OperationStackInput == ListDelegatedServicesForAccountInput, OperationStackOutput == ListDelegatedServicesForAccountOutput {
    /// This paginator transforms the `AsyncSequence` returned by `listDelegatedServicesForAccountPaginated`
    /// to access the nested member `[OrganizationsClientTypes.DelegatedService]`
    /// - Returns: `[OrganizationsClientTypes.DelegatedService]`
    public func delegatedServices() async throws -> [OrganizationsClientTypes.DelegatedService] {
        return try await self.asyncCompactMap { item in item.delegatedServices }
    }
}
extension OrganizationsClient {
    /// Paginate over `[ListHandshakesForAccountOutput]` results.
    ///
    /// When this operation is called, an `AsyncSequence` is created. AsyncSequences are lazy so no service
    /// calls are made until the sequence is iterated over. This also means there is no guarantee that the request is valid
    /// until then. If there are errors in your request, you will see the failures only after you start iterating.
    /// - Parameters:
    ///     - input: A `[ListHandshakesForAccountInput]` to start pagination
    /// - Returns: An `AsyncSequence` that can iterate over `ListHandshakesForAccountOutput`
    public func listHandshakesForAccountPaginated(input: ListHandshakesForAccountInput) -> ClientRuntime.PaginatorSequence<ListHandshakesForAccountInput, ListHandshakesForAccountOutput> {
        return ClientRuntime.PaginatorSequence<ListHandshakesForAccountInput, ListHandshakesForAccountOutput>(input: input, inputKey: \.nextToken, outputKey: \.nextToken, paginationFunction: self.listHandshakesForAccount(input:))
    }
}

extension ListHandshakesForAccountInput: ClientRuntime.PaginateToken {
    public func usingPaginationToken(_ token: Swift.String) -> ListHandshakesForAccountInput {
        return ListHandshakesForAccountInput(
            filter: self.filter,
            maxResults: self.maxResults,
            nextToken: token
        )}
}
extension OrganizationsClient {
    /// Paginate over `[ListHandshakesForOrganizationOutput]` results.
    ///
    /// When this operation is called, an `AsyncSequence` is created. AsyncSequences are lazy so no service
    /// calls are made until the sequence is iterated over. This also means there is no guarantee that the request is valid
    /// until then. If there are errors in your request, you will see the failures only after you start iterating.
    /// - Parameters:
    ///     - input: A `[ListHandshakesForOrganizationInput]` to start pagination
    /// - Returns: An `AsyncSequence` that can iterate over `ListHandshakesForOrganizationOutput`
    public func listHandshakesForOrganizationPaginated(input: ListHandshakesForOrganizationInput) -> ClientRuntime.PaginatorSequence<ListHandshakesForOrganizationInput, ListHandshakesForOrganizationOutput> {
        return ClientRuntime.PaginatorSequence<ListHandshakesForOrganizationInput, ListHandshakesForOrganizationOutput>(input: input, inputKey: \.nextToken, outputKey: \.nextToken, paginationFunction: self.listHandshakesForOrganization(input:))
    }
}

extension ListHandshakesForOrganizationInput: ClientRuntime.PaginateToken {
    public func usingPaginationToken(_ token: Swift.String) -> ListHandshakesForOrganizationInput {
        return ListHandshakesForOrganizationInput(
            filter: self.filter,
            maxResults: self.maxResults,
            nextToken: token
        )}
}
extension OrganizationsClient {
    /// Paginate over `[ListOrganizationalUnitsForParentOutput]` results.
    ///
    /// When this operation is called, an `AsyncSequence` is created. AsyncSequences are lazy so no service
    /// calls are made until the sequence is iterated over. This also means there is no guarantee that the request is valid
    /// until then. If there are errors in your request, you will see the failures only after you start iterating.
    /// - Parameters:
    ///     - input: A `[ListOrganizationalUnitsForParentInput]` to start pagination
    /// - Returns: An `AsyncSequence` that can iterate over `ListOrganizationalUnitsForParentOutput`
    public func listOrganizationalUnitsForParentPaginated(input: ListOrganizationalUnitsForParentInput) -> ClientRuntime.PaginatorSequence<ListOrganizationalUnitsForParentInput, ListOrganizationalUnitsForParentOutput> {
        return ClientRuntime.PaginatorSequence<ListOrganizationalUnitsForParentInput, ListOrganizationalUnitsForParentOutput>(input: input, inputKey: \.nextToken, outputKey: \.nextToken, paginationFunction: self.listOrganizationalUnitsForParent(input:))
    }
}

extension ListOrganizationalUnitsForParentInput: ClientRuntime.PaginateToken {
    public func usingPaginationToken(_ token: Swift.String) -> ListOrganizationalUnitsForParentInput {
        return ListOrganizationalUnitsForParentInput(
            maxResults: self.maxResults,
            nextToken: token,
            parentId: self.parentId
        )}
}
extension OrganizationsClient {
    /// Paginate over `[ListParentsOutput]` results.
    ///
    /// When this operation is called, an `AsyncSequence` is created. AsyncSequences are lazy so no service
    /// calls are made until the sequence is iterated over. This also means there is no guarantee that the request is valid
    /// until then. If there are errors in your request, you will see the failures only after you start iterating.
    /// - Parameters:
    ///     - input: A `[ListParentsInput]` to start pagination
    /// - Returns: An `AsyncSequence` that can iterate over `ListParentsOutput`
    public func listParentsPaginated(input: ListParentsInput) -> ClientRuntime.PaginatorSequence<ListParentsInput, ListParentsOutput> {
        return ClientRuntime.PaginatorSequence<ListParentsInput, ListParentsOutput>(input: input, inputKey: \.nextToken, outputKey: \.nextToken, paginationFunction: self.listParents(input:))
    }
}

extension ListParentsInput: ClientRuntime.PaginateToken {
    public func usingPaginationToken(_ token: Swift.String) -> ListParentsInput {
        return ListParentsInput(
            childId: self.childId,
            maxResults: self.maxResults,
            nextToken: token
        )}
}
extension OrganizationsClient {
    /// Paginate over `[ListPoliciesOutput]` results.
    ///
    /// When this operation is called, an `AsyncSequence` is created. AsyncSequences are lazy so no service
    /// calls are made until the sequence is iterated over. This also means there is no guarantee that the request is valid
    /// until then. If there are errors in your request, you will see the failures only after you start iterating.
    /// - Parameters:
    ///     - input: A `[ListPoliciesInput]` to start pagination
    /// - Returns: An `AsyncSequence` that can iterate over `ListPoliciesOutput`
    public func listPoliciesPaginated(input: ListPoliciesInput) -> ClientRuntime.PaginatorSequence<ListPoliciesInput, ListPoliciesOutput> {
        return ClientRuntime.PaginatorSequence<ListPoliciesInput, ListPoliciesOutput>(input: input, inputKey: \.nextToken, outputKey: \.nextToken, paginationFunction: self.listPolicies(input:))
    }
}

extension ListPoliciesInput: ClientRuntime.PaginateToken {
    public func usingPaginationToken(_ token: Swift.String) -> ListPoliciesInput {
        return ListPoliciesInput(
            filter: self.filter,
            maxResults: self.maxResults,
            nextToken: token
        )}
}
extension OrganizationsClient {
    /// Paginate over `[ListPoliciesForTargetOutput]` results.
    ///
    /// When this operation is called, an `AsyncSequence` is created. AsyncSequences are lazy so no service
    /// calls are made until the sequence is iterated over. This also means there is no guarantee that the request is valid
    /// until then. If there are errors in your request, you will see the failures only after you start iterating.
    /// - Parameters:
    ///     - input: A `[ListPoliciesForTargetInput]` to start pagination
    /// - Returns: An `AsyncSequence` that can iterate over `ListPoliciesForTargetOutput`
    public func listPoliciesForTargetPaginated(input: ListPoliciesForTargetInput) -> ClientRuntime.PaginatorSequence<ListPoliciesForTargetInput, ListPoliciesForTargetOutput> {
        return ClientRuntime.PaginatorSequence<ListPoliciesForTargetInput, ListPoliciesForTargetOutput>(input: input, inputKey: \.nextToken, outputKey: \.nextToken, paginationFunction: self.listPoliciesForTarget(input:))
    }
}

extension ListPoliciesForTargetInput: ClientRuntime.PaginateToken {
    public func usingPaginationToken(_ token: Swift.String) -> ListPoliciesForTargetInput {
        return ListPoliciesForTargetInput(
            filter: self.filter,
            maxResults: self.maxResults,
            nextToken: token,
            targetId: self.targetId
        )}
}
extension OrganizationsClient {
    /// Paginate over `[ListRootsOutput]` results.
    ///
    /// When this operation is called, an `AsyncSequence` is created. AsyncSequences are lazy so no service
    /// calls are made until the sequence is iterated over. This also means there is no guarantee that the request is valid
    /// until then. If there are errors in your request, you will see the failures only after you start iterating.
    /// - Parameters:
    ///     - input: A `[ListRootsInput]` to start pagination
    /// - Returns: An `AsyncSequence` that can iterate over `ListRootsOutput`
    public func listRootsPaginated(input: ListRootsInput) -> ClientRuntime.PaginatorSequence<ListRootsInput, ListRootsOutput> {
        return ClientRuntime.PaginatorSequence<ListRootsInput, ListRootsOutput>(input: input, inputKey: \.nextToken, outputKey: \.nextToken, paginationFunction: self.listRoots(input:))
    }
}

extension ListRootsInput: ClientRuntime.PaginateToken {
    public func usingPaginationToken(_ token: Swift.String) -> ListRootsInput {
        return ListRootsInput(
            maxResults: self.maxResults,
            nextToken: token
        )}
}
extension OrganizationsClient {
    /// Paginate over `[ListTagsForResourceOutput]` results.
    ///
    /// When this operation is called, an `AsyncSequence` is created. AsyncSequences are lazy so no service
    /// calls are made until the sequence is iterated over. This also means there is no guarantee that the request is valid
    /// until then. If there are errors in your request, you will see the failures only after you start iterating.
    /// - Parameters:
    ///     - input: A `[ListTagsForResourceInput]` to start pagination
    /// - Returns: An `AsyncSequence` that can iterate over `ListTagsForResourceOutput`
    public func listTagsForResourcePaginated(input: ListTagsForResourceInput) -> ClientRuntime.PaginatorSequence<ListTagsForResourceInput, ListTagsForResourceOutput> {
        return ClientRuntime.PaginatorSequence<ListTagsForResourceInput, ListTagsForResourceOutput>(input: input, inputKey: \.nextToken, outputKey: \.nextToken, paginationFunction: self.listTagsForResource(input:))
    }
}

extension ListTagsForResourceInput: ClientRuntime.PaginateToken {
    public func usingPaginationToken(_ token: Swift.String) -> ListTagsForResourceInput {
        return ListTagsForResourceInput(
            nextToken: token,
            resourceId: self.resourceId
        )}
}

extension PaginatorSequence where OperationStackInput == ListTagsForResourceInput, OperationStackOutput == ListTagsForResourceOutput {
    /// This paginator transforms the `AsyncSequence` returned by `listTagsForResourcePaginated`
    /// to access the nested member `[OrganizationsClientTypes.Tag]`
    /// - Returns: `[OrganizationsClientTypes.Tag]`
    public func tags() async throws -> [OrganizationsClientTypes.Tag] {
        return try await self.asyncCompactMap { item in item.tags }
    }
}
extension OrganizationsClient {
    /// Paginate over `[ListTargetsForPolicyOutput]` results.
    ///
    /// When this operation is called, an `AsyncSequence` is created. AsyncSequences are lazy so no service
    /// calls are made until the sequence is iterated over. This also means there is no guarantee that the request is valid
    /// until then. If there are errors in your request, you will see the failures only after you start iterating.
    /// - Parameters:
    ///     - input: A `[ListTargetsForPolicyInput]` to start pagination
    /// - Returns: An `AsyncSequence` that can iterate over `ListTargetsForPolicyOutput`
    public func listTargetsForPolicyPaginated(input: ListTargetsForPolicyInput) -> ClientRuntime.PaginatorSequence<ListTargetsForPolicyInput, ListTargetsForPolicyOutput> {
        return ClientRuntime.PaginatorSequence<ListTargetsForPolicyInput, ListTargetsForPolicyOutput>(input: input, inputKey: \.nextToken, outputKey: \.nextToken, paginationFunction: self.listTargetsForPolicy(input:))
    }
}

extension ListTargetsForPolicyInput: ClientRuntime.PaginateToken {
    public func usingPaginationToken(_ token: Swift.String) -> ListTargetsForPolicyInput {
        return ListTargetsForPolicyInput(
            maxResults: self.maxResults,
            nextToken: token,
            policyId: self.policyId
        )}
}
