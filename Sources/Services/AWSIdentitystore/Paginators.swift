// Code generated by smithy-swift-codegen. DO NOT EDIT!

import ClientRuntime
import protocol ClientRuntime.PaginateToken
import struct ClientRuntime.PaginatorSequence

extension IdentitystoreClient {
    /// Paginate over `[ListGroupMembershipsForMemberOutput]` results.
    ///
    /// When this operation is called, an `AsyncSequence` is created. AsyncSequences are lazy so no service
    /// calls are made until the sequence is iterated over. This also means there is no guarantee that the request is valid
    /// until then. If there are errors in your request, you will see the failures only after you start iterating.
    /// - Parameters:
    ///     - input: A `[ListGroupMembershipsForMemberInput]` to start pagination
    /// - Returns: An `AsyncSequence` that can iterate over `ListGroupMembershipsForMemberOutput`
    public func listGroupMembershipsForMemberPaginated(input: ListGroupMembershipsForMemberInput) -> ClientRuntime.PaginatorSequence<ListGroupMembershipsForMemberInput, ListGroupMembershipsForMemberOutput> {
        return ClientRuntime.PaginatorSequence<ListGroupMembershipsForMemberInput, ListGroupMembershipsForMemberOutput>(input: input, inputKey: \.nextToken, outputKey: \.nextToken, paginationFunction: self.listGroupMembershipsForMember(input:))
    }
}

extension ListGroupMembershipsForMemberInput: ClientRuntime.PaginateToken {
    public func usingPaginationToken(_ token: Swift.String) -> ListGroupMembershipsForMemberInput {
        return ListGroupMembershipsForMemberInput(
            identityStoreId: self.identityStoreId,
            maxResults: self.maxResults,
            memberId: self.memberId,
            nextToken: token
        )}
}

extension PaginatorSequence where OperationStackInput == ListGroupMembershipsForMemberInput, OperationStackOutput == ListGroupMembershipsForMemberOutput {
    /// This paginator transforms the `AsyncSequence` returned by `listGroupMembershipsForMemberPaginated`
    /// to access the nested member `[IdentitystoreClientTypes.GroupMembership]`
    /// - Returns: `[IdentitystoreClientTypes.GroupMembership]`
    public func groupMemberships() async throws -> [IdentitystoreClientTypes.GroupMembership] {
        return try await self.asyncCompactMap { item in item.groupMemberships }
    }
}
