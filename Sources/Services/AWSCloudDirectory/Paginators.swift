// Code generated by smithy-swift-codegen. DO NOT EDIT!

import ClientRuntime
import protocol ClientRuntime.PaginateToken
import struct ClientRuntime.PaginatorSequence

extension CloudDirectoryClient {
    /// Paginate over `[ListAppliedSchemaArnsOutput]` results.
    ///
    /// When this operation is called, an `AsyncSequence` is created. AsyncSequences are lazy so no service
    /// calls are made until the sequence is iterated over. This also means there is no guarantee that the request is valid
    /// until then. If there are errors in your request, you will see the failures only after you start iterating.
    /// - Parameters:
    ///     - input: A `[ListAppliedSchemaArnsInput]` to start pagination
    /// - Returns: An `AsyncSequence` that can iterate over `ListAppliedSchemaArnsOutput`
    public func listAppliedSchemaArnsPaginated(input: ListAppliedSchemaArnsInput) -> ClientRuntime.PaginatorSequence<ListAppliedSchemaArnsInput, ListAppliedSchemaArnsOutput> {
        return ClientRuntime.PaginatorSequence<ListAppliedSchemaArnsInput, ListAppliedSchemaArnsOutput>(input: input, inputKey: \.nextToken, outputKey: \.nextToken, paginationFunction: self.listAppliedSchemaArns(input:))
    }
}

extension ListAppliedSchemaArnsInput: ClientRuntime.PaginateToken {
    public func usingPaginationToken(_ token: Swift.String) -> ListAppliedSchemaArnsInput {
        return ListAppliedSchemaArnsInput(
            directoryArn: self.directoryArn,
            maxResults: self.maxResults,
            nextToken: token,
            schemaArn: self.schemaArn
        )}
}
extension CloudDirectoryClient {
    /// Paginate over `[ListAttachedIndicesOutput]` results.
    ///
    /// When this operation is called, an `AsyncSequence` is created. AsyncSequences are lazy so no service
    /// calls are made until the sequence is iterated over. This also means there is no guarantee that the request is valid
    /// until then. If there are errors in your request, you will see the failures only after you start iterating.
    /// - Parameters:
    ///     - input: A `[ListAttachedIndicesInput]` to start pagination
    /// - Returns: An `AsyncSequence` that can iterate over `ListAttachedIndicesOutput`
    public func listAttachedIndicesPaginated(input: ListAttachedIndicesInput) -> ClientRuntime.PaginatorSequence<ListAttachedIndicesInput, ListAttachedIndicesOutput> {
        return ClientRuntime.PaginatorSequence<ListAttachedIndicesInput, ListAttachedIndicesOutput>(input: input, inputKey: \.nextToken, outputKey: \.nextToken, paginationFunction: self.listAttachedIndices(input:))
    }
}

extension ListAttachedIndicesInput: ClientRuntime.PaginateToken {
    public func usingPaginationToken(_ token: Swift.String) -> ListAttachedIndicesInput {
        return ListAttachedIndicesInput(
            consistencyLevel: self.consistencyLevel,
            directoryArn: self.directoryArn,
            maxResults: self.maxResults,
            nextToken: token,
            targetReference: self.targetReference
        )}
}
extension CloudDirectoryClient {
    /// Paginate over `[ListDevelopmentSchemaArnsOutput]` results.
    ///
    /// When this operation is called, an `AsyncSequence` is created. AsyncSequences are lazy so no service
    /// calls are made until the sequence is iterated over. This also means there is no guarantee that the request is valid
    /// until then. If there are errors in your request, you will see the failures only after you start iterating.
    /// - Parameters:
    ///     - input: A `[ListDevelopmentSchemaArnsInput]` to start pagination
    /// - Returns: An `AsyncSequence` that can iterate over `ListDevelopmentSchemaArnsOutput`
    public func listDevelopmentSchemaArnsPaginated(input: ListDevelopmentSchemaArnsInput) -> ClientRuntime.PaginatorSequence<ListDevelopmentSchemaArnsInput, ListDevelopmentSchemaArnsOutput> {
        return ClientRuntime.PaginatorSequence<ListDevelopmentSchemaArnsInput, ListDevelopmentSchemaArnsOutput>(input: input, inputKey: \.nextToken, outputKey: \.nextToken, paginationFunction: self.listDevelopmentSchemaArns(input:))
    }
}

extension ListDevelopmentSchemaArnsInput: ClientRuntime.PaginateToken {
    public func usingPaginationToken(_ token: Swift.String) -> ListDevelopmentSchemaArnsInput {
        return ListDevelopmentSchemaArnsInput(
            maxResults: self.maxResults,
            nextToken: token
        )}
}
extension CloudDirectoryClient {
    /// Paginate over `[ListDirectoriesOutput]` results.
    ///
    /// When this operation is called, an `AsyncSequence` is created. AsyncSequences are lazy so no service
    /// calls are made until the sequence is iterated over. This also means there is no guarantee that the request is valid
    /// until then. If there are errors in your request, you will see the failures only after you start iterating.
    /// - Parameters:
    ///     - input: A `[ListDirectoriesInput]` to start pagination
    /// - Returns: An `AsyncSequence` that can iterate over `ListDirectoriesOutput`
    public func listDirectoriesPaginated(input: ListDirectoriesInput) -> ClientRuntime.PaginatorSequence<ListDirectoriesInput, ListDirectoriesOutput> {
        return ClientRuntime.PaginatorSequence<ListDirectoriesInput, ListDirectoriesOutput>(input: input, inputKey: \.nextToken, outputKey: \.nextToken, paginationFunction: self.listDirectories(input:))
    }
}

extension ListDirectoriesInput: ClientRuntime.PaginateToken {
    public func usingPaginationToken(_ token: Swift.String) -> ListDirectoriesInput {
        return ListDirectoriesInput(
            maxResults: self.maxResults,
            nextToken: token,
            state: self.state
        )}
}
extension CloudDirectoryClient {
    /// Paginate over `[ListFacetAttributesOutput]` results.
    ///
    /// When this operation is called, an `AsyncSequence` is created. AsyncSequences are lazy so no service
    /// calls are made until the sequence is iterated over. This also means there is no guarantee that the request is valid
    /// until then. If there are errors in your request, you will see the failures only after you start iterating.
    /// - Parameters:
    ///     - input: A `[ListFacetAttributesInput]` to start pagination
    /// - Returns: An `AsyncSequence` that can iterate over `ListFacetAttributesOutput`
    public func listFacetAttributesPaginated(input: ListFacetAttributesInput) -> ClientRuntime.PaginatorSequence<ListFacetAttributesInput, ListFacetAttributesOutput> {
        return ClientRuntime.PaginatorSequence<ListFacetAttributesInput, ListFacetAttributesOutput>(input: input, inputKey: \.nextToken, outputKey: \.nextToken, paginationFunction: self.listFacetAttributes(input:))
    }
}

extension ListFacetAttributesInput: ClientRuntime.PaginateToken {
    public func usingPaginationToken(_ token: Swift.String) -> ListFacetAttributesInput {
        return ListFacetAttributesInput(
            maxResults: self.maxResults,
            name: self.name,
            nextToken: token,
            schemaArn: self.schemaArn
        )}
}
extension CloudDirectoryClient {
    /// Paginate over `[ListFacetNamesOutput]` results.
    ///
    /// When this operation is called, an `AsyncSequence` is created. AsyncSequences are lazy so no service
    /// calls are made until the sequence is iterated over. This also means there is no guarantee that the request is valid
    /// until then. If there are errors in your request, you will see the failures only after you start iterating.
    /// - Parameters:
    ///     - input: A `[ListFacetNamesInput]` to start pagination
    /// - Returns: An `AsyncSequence` that can iterate over `ListFacetNamesOutput`
    public func listFacetNamesPaginated(input: ListFacetNamesInput) -> ClientRuntime.PaginatorSequence<ListFacetNamesInput, ListFacetNamesOutput> {
        return ClientRuntime.PaginatorSequence<ListFacetNamesInput, ListFacetNamesOutput>(input: input, inputKey: \.nextToken, outputKey: \.nextToken, paginationFunction: self.listFacetNames(input:))
    }
}

extension ListFacetNamesInput: ClientRuntime.PaginateToken {
    public func usingPaginationToken(_ token: Swift.String) -> ListFacetNamesInput {
        return ListFacetNamesInput(
            maxResults: self.maxResults,
            nextToken: token,
            schemaArn: self.schemaArn
        )}
}
extension CloudDirectoryClient {
    /// Paginate over `[ListIndexOutput]` results.
    ///
    /// When this operation is called, an `AsyncSequence` is created. AsyncSequences are lazy so no service
    /// calls are made until the sequence is iterated over. This also means there is no guarantee that the request is valid
    /// until then. If there are errors in your request, you will see the failures only after you start iterating.
    /// - Parameters:
    ///     - input: A `[ListIndexInput]` to start pagination
    /// - Returns: An `AsyncSequence` that can iterate over `ListIndexOutput`
    public func listIndexPaginated(input: ListIndexInput) -> ClientRuntime.PaginatorSequence<ListIndexInput, ListIndexOutput> {
        return ClientRuntime.PaginatorSequence<ListIndexInput, ListIndexOutput>(input: input, inputKey: \.nextToken, outputKey: \.nextToken, paginationFunction: self.listIndex(input:))
    }
}

extension ListIndexInput: ClientRuntime.PaginateToken {
    public func usingPaginationToken(_ token: Swift.String) -> ListIndexInput {
        return ListIndexInput(
            consistencyLevel: self.consistencyLevel,
            directoryArn: self.directoryArn,
            indexReference: self.indexReference,
            maxResults: self.maxResults,
            nextToken: token,
            rangesOnIndexedValues: self.rangesOnIndexedValues
        )}
}
extension CloudDirectoryClient {
    /// Paginate over `[ListManagedSchemaArnsOutput]` results.
    ///
    /// When this operation is called, an `AsyncSequence` is created. AsyncSequences are lazy so no service
    /// calls are made until the sequence is iterated over. This also means there is no guarantee that the request is valid
    /// until then. If there are errors in your request, you will see the failures only after you start iterating.
    /// - Parameters:
    ///     - input: A `[ListManagedSchemaArnsInput]` to start pagination
    /// - Returns: An `AsyncSequence` that can iterate over `ListManagedSchemaArnsOutput`
    public func listManagedSchemaArnsPaginated(input: ListManagedSchemaArnsInput) -> ClientRuntime.PaginatorSequence<ListManagedSchemaArnsInput, ListManagedSchemaArnsOutput> {
        return ClientRuntime.PaginatorSequence<ListManagedSchemaArnsInput, ListManagedSchemaArnsOutput>(input: input, inputKey: \.nextToken, outputKey: \.nextToken, paginationFunction: self.listManagedSchemaArns(input:))
    }
}

extension ListManagedSchemaArnsInput: ClientRuntime.PaginateToken {
    public func usingPaginationToken(_ token: Swift.String) -> ListManagedSchemaArnsInput {
        return ListManagedSchemaArnsInput(
            maxResults: self.maxResults,
            nextToken: token,
            schemaArn: self.schemaArn
        )}
}
extension CloudDirectoryClient {
    /// Paginate over `[ListObjectAttributesOutput]` results.
    ///
    /// When this operation is called, an `AsyncSequence` is created. AsyncSequences are lazy so no service
    /// calls are made until the sequence is iterated over. This also means there is no guarantee that the request is valid
    /// until then. If there are errors in your request, you will see the failures only after you start iterating.
    /// - Parameters:
    ///     - input: A `[ListObjectAttributesInput]` to start pagination
    /// - Returns: An `AsyncSequence` that can iterate over `ListObjectAttributesOutput`
    public func listObjectAttributesPaginated(input: ListObjectAttributesInput) -> ClientRuntime.PaginatorSequence<ListObjectAttributesInput, ListObjectAttributesOutput> {
        return ClientRuntime.PaginatorSequence<ListObjectAttributesInput, ListObjectAttributesOutput>(input: input, inputKey: \.nextToken, outputKey: \.nextToken, paginationFunction: self.listObjectAttributes(input:))
    }
}

extension ListObjectAttributesInput: ClientRuntime.PaginateToken {
    public func usingPaginationToken(_ token: Swift.String) -> ListObjectAttributesInput {
        return ListObjectAttributesInput(
            consistencyLevel: self.consistencyLevel,
            directoryArn: self.directoryArn,
            facetFilter: self.facetFilter,
            maxResults: self.maxResults,
            nextToken: token,
            objectReference: self.objectReference
        )}
}
extension CloudDirectoryClient {
    /// Paginate over `[ListObjectChildrenOutput]` results.
    ///
    /// When this operation is called, an `AsyncSequence` is created. AsyncSequences are lazy so no service
    /// calls are made until the sequence is iterated over. This also means there is no guarantee that the request is valid
    /// until then. If there are errors in your request, you will see the failures only after you start iterating.
    /// - Parameters:
    ///     - input: A `[ListObjectChildrenInput]` to start pagination
    /// - Returns: An `AsyncSequence` that can iterate over `ListObjectChildrenOutput`
    public func listObjectChildrenPaginated(input: ListObjectChildrenInput) -> ClientRuntime.PaginatorSequence<ListObjectChildrenInput, ListObjectChildrenOutput> {
        return ClientRuntime.PaginatorSequence<ListObjectChildrenInput, ListObjectChildrenOutput>(input: input, inputKey: \.nextToken, outputKey: \.nextToken, paginationFunction: self.listObjectChildren(input:))
    }
}

extension ListObjectChildrenInput: ClientRuntime.PaginateToken {
    public func usingPaginationToken(_ token: Swift.String) -> ListObjectChildrenInput {
        return ListObjectChildrenInput(
            consistencyLevel: self.consistencyLevel,
            directoryArn: self.directoryArn,
            maxResults: self.maxResults,
            nextToken: token,
            objectReference: self.objectReference
        )}
}
extension CloudDirectoryClient {
    /// Paginate over `[ListObjectParentPathsOutput]` results.
    ///
    /// When this operation is called, an `AsyncSequence` is created. AsyncSequences are lazy so no service
    /// calls are made until the sequence is iterated over. This also means there is no guarantee that the request is valid
    /// until then. If there are errors in your request, you will see the failures only after you start iterating.
    /// - Parameters:
    ///     - input: A `[ListObjectParentPathsInput]` to start pagination
    /// - Returns: An `AsyncSequence` that can iterate over `ListObjectParentPathsOutput`
    public func listObjectParentPathsPaginated(input: ListObjectParentPathsInput) -> ClientRuntime.PaginatorSequence<ListObjectParentPathsInput, ListObjectParentPathsOutput> {
        return ClientRuntime.PaginatorSequence<ListObjectParentPathsInput, ListObjectParentPathsOutput>(input: input, inputKey: \.nextToken, outputKey: \.nextToken, paginationFunction: self.listObjectParentPaths(input:))
    }
}

extension ListObjectParentPathsInput: ClientRuntime.PaginateToken {
    public func usingPaginationToken(_ token: Swift.String) -> ListObjectParentPathsInput {
        return ListObjectParentPathsInput(
            directoryArn: self.directoryArn,
            maxResults: self.maxResults,
            nextToken: token,
            objectReference: self.objectReference
        )}
}
extension CloudDirectoryClient {
    /// Paginate over `[ListObjectParentsOutput]` results.
    ///
    /// When this operation is called, an `AsyncSequence` is created. AsyncSequences are lazy so no service
    /// calls are made until the sequence is iterated over. This also means there is no guarantee that the request is valid
    /// until then. If there are errors in your request, you will see the failures only after you start iterating.
    /// - Parameters:
    ///     - input: A `[ListObjectParentsInput]` to start pagination
    /// - Returns: An `AsyncSequence` that can iterate over `ListObjectParentsOutput`
    public func listObjectParentsPaginated(input: ListObjectParentsInput) -> ClientRuntime.PaginatorSequence<ListObjectParentsInput, ListObjectParentsOutput> {
        return ClientRuntime.PaginatorSequence<ListObjectParentsInput, ListObjectParentsOutput>(input: input, inputKey: \.nextToken, outputKey: \.nextToken, paginationFunction: self.listObjectParents(input:))
    }
}

extension ListObjectParentsInput: ClientRuntime.PaginateToken {
    public func usingPaginationToken(_ token: Swift.String) -> ListObjectParentsInput {
        return ListObjectParentsInput(
            consistencyLevel: self.consistencyLevel,
            directoryArn: self.directoryArn,
            includeAllLinksToEachParent: self.includeAllLinksToEachParent,
            maxResults: self.maxResults,
            nextToken: token,
            objectReference: self.objectReference
        )}
}
extension CloudDirectoryClient {
    /// Paginate over `[ListObjectPoliciesOutput]` results.
    ///
    /// When this operation is called, an `AsyncSequence` is created. AsyncSequences are lazy so no service
    /// calls are made until the sequence is iterated over. This also means there is no guarantee that the request is valid
    /// until then. If there are errors in your request, you will see the failures only after you start iterating.
    /// - Parameters:
    ///     - input: A `[ListObjectPoliciesInput]` to start pagination
    /// - Returns: An `AsyncSequence` that can iterate over `ListObjectPoliciesOutput`
    public func listObjectPoliciesPaginated(input: ListObjectPoliciesInput) -> ClientRuntime.PaginatorSequence<ListObjectPoliciesInput, ListObjectPoliciesOutput> {
        return ClientRuntime.PaginatorSequence<ListObjectPoliciesInput, ListObjectPoliciesOutput>(input: input, inputKey: \.nextToken, outputKey: \.nextToken, paginationFunction: self.listObjectPolicies(input:))
    }
}

extension ListObjectPoliciesInput: ClientRuntime.PaginateToken {
    public func usingPaginationToken(_ token: Swift.String) -> ListObjectPoliciesInput {
        return ListObjectPoliciesInput(
            consistencyLevel: self.consistencyLevel,
            directoryArn: self.directoryArn,
            maxResults: self.maxResults,
            nextToken: token,
            objectReference: self.objectReference
        )}
}
extension CloudDirectoryClient {
    /// Paginate over `[ListPolicyAttachmentsOutput]` results.
    ///
    /// When this operation is called, an `AsyncSequence` is created. AsyncSequences are lazy so no service
    /// calls are made until the sequence is iterated over. This also means there is no guarantee that the request is valid
    /// until then. If there are errors in your request, you will see the failures only after you start iterating.
    /// - Parameters:
    ///     - input: A `[ListPolicyAttachmentsInput]` to start pagination
    /// - Returns: An `AsyncSequence` that can iterate over `ListPolicyAttachmentsOutput`
    public func listPolicyAttachmentsPaginated(input: ListPolicyAttachmentsInput) -> ClientRuntime.PaginatorSequence<ListPolicyAttachmentsInput, ListPolicyAttachmentsOutput> {
        return ClientRuntime.PaginatorSequence<ListPolicyAttachmentsInput, ListPolicyAttachmentsOutput>(input: input, inputKey: \.nextToken, outputKey: \.nextToken, paginationFunction: self.listPolicyAttachments(input:))
    }
}

extension ListPolicyAttachmentsInput: ClientRuntime.PaginateToken {
    public func usingPaginationToken(_ token: Swift.String) -> ListPolicyAttachmentsInput {
        return ListPolicyAttachmentsInput(
            consistencyLevel: self.consistencyLevel,
            directoryArn: self.directoryArn,
            maxResults: self.maxResults,
            nextToken: token,
            policyReference: self.policyReference
        )}
}
extension CloudDirectoryClient {
    /// Paginate over `[ListPublishedSchemaArnsOutput]` results.
    ///
    /// When this operation is called, an `AsyncSequence` is created. AsyncSequences are lazy so no service
    /// calls are made until the sequence is iterated over. This also means there is no guarantee that the request is valid
    /// until then. If there are errors in your request, you will see the failures only after you start iterating.
    /// - Parameters:
    ///     - input: A `[ListPublishedSchemaArnsInput]` to start pagination
    /// - Returns: An `AsyncSequence` that can iterate over `ListPublishedSchemaArnsOutput`
    public func listPublishedSchemaArnsPaginated(input: ListPublishedSchemaArnsInput) -> ClientRuntime.PaginatorSequence<ListPublishedSchemaArnsInput, ListPublishedSchemaArnsOutput> {
        return ClientRuntime.PaginatorSequence<ListPublishedSchemaArnsInput, ListPublishedSchemaArnsOutput>(input: input, inputKey: \.nextToken, outputKey: \.nextToken, paginationFunction: self.listPublishedSchemaArns(input:))
    }
}

extension ListPublishedSchemaArnsInput: ClientRuntime.PaginateToken {
    public func usingPaginationToken(_ token: Swift.String) -> ListPublishedSchemaArnsInput {
        return ListPublishedSchemaArnsInput(
            maxResults: self.maxResults,
            nextToken: token,
            schemaArn: self.schemaArn
        )}
}
extension CloudDirectoryClient {
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
            maxResults: self.maxResults,
            nextToken: token,
            resourceArn: self.resourceArn
        )}
}
extension CloudDirectoryClient {
    /// Paginate over `[ListTypedLinkFacetAttributesOutput]` results.
    ///
    /// When this operation is called, an `AsyncSequence` is created. AsyncSequences are lazy so no service
    /// calls are made until the sequence is iterated over. This also means there is no guarantee that the request is valid
    /// until then. If there are errors in your request, you will see the failures only after you start iterating.
    /// - Parameters:
    ///     - input: A `[ListTypedLinkFacetAttributesInput]` to start pagination
    /// - Returns: An `AsyncSequence` that can iterate over `ListTypedLinkFacetAttributesOutput`
    public func listTypedLinkFacetAttributesPaginated(input: ListTypedLinkFacetAttributesInput) -> ClientRuntime.PaginatorSequence<ListTypedLinkFacetAttributesInput, ListTypedLinkFacetAttributesOutput> {
        return ClientRuntime.PaginatorSequence<ListTypedLinkFacetAttributesInput, ListTypedLinkFacetAttributesOutput>(input: input, inputKey: \.nextToken, outputKey: \.nextToken, paginationFunction: self.listTypedLinkFacetAttributes(input:))
    }
}

extension ListTypedLinkFacetAttributesInput: ClientRuntime.PaginateToken {
    public func usingPaginationToken(_ token: Swift.String) -> ListTypedLinkFacetAttributesInput {
        return ListTypedLinkFacetAttributesInput(
            maxResults: self.maxResults,
            name: self.name,
            nextToken: token,
            schemaArn: self.schemaArn
        )}
}
extension CloudDirectoryClient {
    /// Paginate over `[ListTypedLinkFacetNamesOutput]` results.
    ///
    /// When this operation is called, an `AsyncSequence` is created. AsyncSequences are lazy so no service
    /// calls are made until the sequence is iterated over. This also means there is no guarantee that the request is valid
    /// until then. If there are errors in your request, you will see the failures only after you start iterating.
    /// - Parameters:
    ///     - input: A `[ListTypedLinkFacetNamesInput]` to start pagination
    /// - Returns: An `AsyncSequence` that can iterate over `ListTypedLinkFacetNamesOutput`
    public func listTypedLinkFacetNamesPaginated(input: ListTypedLinkFacetNamesInput) -> ClientRuntime.PaginatorSequence<ListTypedLinkFacetNamesInput, ListTypedLinkFacetNamesOutput> {
        return ClientRuntime.PaginatorSequence<ListTypedLinkFacetNamesInput, ListTypedLinkFacetNamesOutput>(input: input, inputKey: \.nextToken, outputKey: \.nextToken, paginationFunction: self.listTypedLinkFacetNames(input:))
    }
}

extension ListTypedLinkFacetNamesInput: ClientRuntime.PaginateToken {
    public func usingPaginationToken(_ token: Swift.String) -> ListTypedLinkFacetNamesInput {
        return ListTypedLinkFacetNamesInput(
            maxResults: self.maxResults,
            nextToken: token,
            schemaArn: self.schemaArn
        )}
}
extension CloudDirectoryClient {
    /// Paginate over `[LookupPolicyOutput]` results.
    ///
    /// When this operation is called, an `AsyncSequence` is created. AsyncSequences are lazy so no service
    /// calls are made until the sequence is iterated over. This also means there is no guarantee that the request is valid
    /// until then. If there are errors in your request, you will see the failures only after you start iterating.
    /// - Parameters:
    ///     - input: A `[LookupPolicyInput]` to start pagination
    /// - Returns: An `AsyncSequence` that can iterate over `LookupPolicyOutput`
    public func lookupPolicyPaginated(input: LookupPolicyInput) -> ClientRuntime.PaginatorSequence<LookupPolicyInput, LookupPolicyOutput> {
        return ClientRuntime.PaginatorSequence<LookupPolicyInput, LookupPolicyOutput>(input: input, inputKey: \.nextToken, outputKey: \.nextToken, paginationFunction: self.lookupPolicy(input:))
    }
}

extension LookupPolicyInput: ClientRuntime.PaginateToken {
    public func usingPaginationToken(_ token: Swift.String) -> LookupPolicyInput {
        return LookupPolicyInput(
            directoryArn: self.directoryArn,
            maxResults: self.maxResults,
            nextToken: token,
            objectReference: self.objectReference
        )}
}
