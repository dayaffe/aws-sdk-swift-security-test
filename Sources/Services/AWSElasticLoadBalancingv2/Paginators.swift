// Code generated by smithy-swift-codegen. DO NOT EDIT!

import ClientRuntime
import protocol ClientRuntime.PaginateToken
import struct ClientRuntime.PaginatorSequence

extension ElasticLoadBalancingv2Client {
    /// Paginate over `[DescribeListenersOutput]` results.
    ///
    /// When this operation is called, an `AsyncSequence` is created. AsyncSequences are lazy so no service
    /// calls are made until the sequence is iterated over. This also means there is no guarantee that the request is valid
    /// until then. If there are errors in your request, you will see the failures only after you start iterating.
    /// - Parameters:
    ///     - input: A `[DescribeListenersInput]` to start pagination
    /// - Returns: An `AsyncSequence` that can iterate over `DescribeListenersOutput`
    public func describeListenersPaginated(input: DescribeListenersInput) -> ClientRuntime.PaginatorSequence<DescribeListenersInput, DescribeListenersOutput> {
        return ClientRuntime.PaginatorSequence<DescribeListenersInput, DescribeListenersOutput>(input: input, inputKey: \.marker, outputKey: \.nextMarker, paginationFunction: self.describeListeners(input:))
    }
}

extension DescribeListenersInput: ClientRuntime.PaginateToken {
    public func usingPaginationToken(_ token: Swift.String) -> DescribeListenersInput {
        return DescribeListenersInput(
            listenerArns: self.listenerArns,
            loadBalancerArn: self.loadBalancerArn,
            marker: token,
            pageSize: self.pageSize
        )}
}

extension PaginatorSequence where OperationStackInput == DescribeListenersInput, OperationStackOutput == DescribeListenersOutput {
    /// This paginator transforms the `AsyncSequence` returned by `describeListenersPaginated`
    /// to access the nested member `[ElasticLoadBalancingv2ClientTypes.Listener]`
    /// - Returns: `[ElasticLoadBalancingv2ClientTypes.Listener]`
    public func listeners() async throws -> [ElasticLoadBalancingv2ClientTypes.Listener] {
        return try await self.asyncCompactMap { item in item.listeners }
    }
}
extension ElasticLoadBalancingv2Client {
    /// Paginate over `[DescribeLoadBalancersOutput]` results.
    ///
    /// When this operation is called, an `AsyncSequence` is created. AsyncSequences are lazy so no service
    /// calls are made until the sequence is iterated over. This also means there is no guarantee that the request is valid
    /// until then. If there are errors in your request, you will see the failures only after you start iterating.
    /// - Parameters:
    ///     - input: A `[DescribeLoadBalancersInput]` to start pagination
    /// - Returns: An `AsyncSequence` that can iterate over `DescribeLoadBalancersOutput`
    public func describeLoadBalancersPaginated(input: DescribeLoadBalancersInput) -> ClientRuntime.PaginatorSequence<DescribeLoadBalancersInput, DescribeLoadBalancersOutput> {
        return ClientRuntime.PaginatorSequence<DescribeLoadBalancersInput, DescribeLoadBalancersOutput>(input: input, inputKey: \.marker, outputKey: \.nextMarker, paginationFunction: self.describeLoadBalancers(input:))
    }
}

extension DescribeLoadBalancersInput: ClientRuntime.PaginateToken {
    public func usingPaginationToken(_ token: Swift.String) -> DescribeLoadBalancersInput {
        return DescribeLoadBalancersInput(
            loadBalancerArns: self.loadBalancerArns,
            marker: token,
            names: self.names,
            pageSize: self.pageSize
        )}
}

extension PaginatorSequence where OperationStackInput == DescribeLoadBalancersInput, OperationStackOutput == DescribeLoadBalancersOutput {
    /// This paginator transforms the `AsyncSequence` returned by `describeLoadBalancersPaginated`
    /// to access the nested member `[ElasticLoadBalancingv2ClientTypes.LoadBalancer]`
    /// - Returns: `[ElasticLoadBalancingv2ClientTypes.LoadBalancer]`
    public func loadBalancers() async throws -> [ElasticLoadBalancingv2ClientTypes.LoadBalancer] {
        return try await self.asyncCompactMap { item in item.loadBalancers }
    }
}
extension ElasticLoadBalancingv2Client {
    /// Paginate over `[DescribeTargetGroupsOutput]` results.
    ///
    /// When this operation is called, an `AsyncSequence` is created. AsyncSequences are lazy so no service
    /// calls are made until the sequence is iterated over. This also means there is no guarantee that the request is valid
    /// until then. If there are errors in your request, you will see the failures only after you start iterating.
    /// - Parameters:
    ///     - input: A `[DescribeTargetGroupsInput]` to start pagination
    /// - Returns: An `AsyncSequence` that can iterate over `DescribeTargetGroupsOutput`
    public func describeTargetGroupsPaginated(input: DescribeTargetGroupsInput) -> ClientRuntime.PaginatorSequence<DescribeTargetGroupsInput, DescribeTargetGroupsOutput> {
        return ClientRuntime.PaginatorSequence<DescribeTargetGroupsInput, DescribeTargetGroupsOutput>(input: input, inputKey: \.marker, outputKey: \.nextMarker, paginationFunction: self.describeTargetGroups(input:))
    }
}

extension DescribeTargetGroupsInput: ClientRuntime.PaginateToken {
    public func usingPaginationToken(_ token: Swift.String) -> DescribeTargetGroupsInput {
        return DescribeTargetGroupsInput(
            loadBalancerArn: self.loadBalancerArn,
            marker: token,
            names: self.names,
            pageSize: self.pageSize,
            targetGroupArns: self.targetGroupArns
        )}
}

extension PaginatorSequence where OperationStackInput == DescribeTargetGroupsInput, OperationStackOutput == DescribeTargetGroupsOutput {
    /// This paginator transforms the `AsyncSequence` returned by `describeTargetGroupsPaginated`
    /// to access the nested member `[ElasticLoadBalancingv2ClientTypes.TargetGroup]`
    /// - Returns: `[ElasticLoadBalancingv2ClientTypes.TargetGroup]`
    public func targetGroups() async throws -> [ElasticLoadBalancingv2ClientTypes.TargetGroup] {
        return try await self.asyncCompactMap { item in item.targetGroups }
    }
}
extension ElasticLoadBalancingv2Client {
    /// Paginate over `[DescribeTrustStoreAssociationsOutput]` results.
    ///
    /// When this operation is called, an `AsyncSequence` is created. AsyncSequences are lazy so no service
    /// calls are made until the sequence is iterated over. This also means there is no guarantee that the request is valid
    /// until then. If there are errors in your request, you will see the failures only after you start iterating.
    /// - Parameters:
    ///     - input: A `[DescribeTrustStoreAssociationsInput]` to start pagination
    /// - Returns: An `AsyncSequence` that can iterate over `DescribeTrustStoreAssociationsOutput`
    public func describeTrustStoreAssociationsPaginated(input: DescribeTrustStoreAssociationsInput) -> ClientRuntime.PaginatorSequence<DescribeTrustStoreAssociationsInput, DescribeTrustStoreAssociationsOutput> {
        return ClientRuntime.PaginatorSequence<DescribeTrustStoreAssociationsInput, DescribeTrustStoreAssociationsOutput>(input: input, inputKey: \.marker, outputKey: \.nextMarker, paginationFunction: self.describeTrustStoreAssociations(input:))
    }
}

extension DescribeTrustStoreAssociationsInput: ClientRuntime.PaginateToken {
    public func usingPaginationToken(_ token: Swift.String) -> DescribeTrustStoreAssociationsInput {
        return DescribeTrustStoreAssociationsInput(
            marker: token,
            pageSize: self.pageSize,
            trustStoreArn: self.trustStoreArn
        )}
}
extension ElasticLoadBalancingv2Client {
    /// Paginate over `[DescribeTrustStoreRevocationsOutput]` results.
    ///
    /// When this operation is called, an `AsyncSequence` is created. AsyncSequences are lazy so no service
    /// calls are made until the sequence is iterated over. This also means there is no guarantee that the request is valid
    /// until then. If there are errors in your request, you will see the failures only after you start iterating.
    /// - Parameters:
    ///     - input: A `[DescribeTrustStoreRevocationsInput]` to start pagination
    /// - Returns: An `AsyncSequence` that can iterate over `DescribeTrustStoreRevocationsOutput`
    public func describeTrustStoreRevocationsPaginated(input: DescribeTrustStoreRevocationsInput) -> ClientRuntime.PaginatorSequence<DescribeTrustStoreRevocationsInput, DescribeTrustStoreRevocationsOutput> {
        return ClientRuntime.PaginatorSequence<DescribeTrustStoreRevocationsInput, DescribeTrustStoreRevocationsOutput>(input: input, inputKey: \.marker, outputKey: \.nextMarker, paginationFunction: self.describeTrustStoreRevocations(input:))
    }
}

extension DescribeTrustStoreRevocationsInput: ClientRuntime.PaginateToken {
    public func usingPaginationToken(_ token: Swift.String) -> DescribeTrustStoreRevocationsInput {
        return DescribeTrustStoreRevocationsInput(
            marker: token,
            pageSize: self.pageSize,
            revocationIds: self.revocationIds,
            trustStoreArn: self.trustStoreArn
        )}
}
extension ElasticLoadBalancingv2Client {
    /// Paginate over `[DescribeTrustStoresOutput]` results.
    ///
    /// When this operation is called, an `AsyncSequence` is created. AsyncSequences are lazy so no service
    /// calls are made until the sequence is iterated over. This also means there is no guarantee that the request is valid
    /// until then. If there are errors in your request, you will see the failures only after you start iterating.
    /// - Parameters:
    ///     - input: A `[DescribeTrustStoresInput]` to start pagination
    /// - Returns: An `AsyncSequence` that can iterate over `DescribeTrustStoresOutput`
    public func describeTrustStoresPaginated(input: DescribeTrustStoresInput) -> ClientRuntime.PaginatorSequence<DescribeTrustStoresInput, DescribeTrustStoresOutput> {
        return ClientRuntime.PaginatorSequence<DescribeTrustStoresInput, DescribeTrustStoresOutput>(input: input, inputKey: \.marker, outputKey: \.nextMarker, paginationFunction: self.describeTrustStores(input:))
    }
}

extension DescribeTrustStoresInput: ClientRuntime.PaginateToken {
    public func usingPaginationToken(_ token: Swift.String) -> DescribeTrustStoresInput {
        return DescribeTrustStoresInput(
            marker: token,
            names: self.names,
            pageSize: self.pageSize,
            trustStoreArns: self.trustStoreArns
        )}
}
