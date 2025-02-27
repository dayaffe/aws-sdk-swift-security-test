// Code generated by smithy-swift-codegen. DO NOT EDIT!

@_spi(FileBasedConfig) import AWSClientRuntime
import AWSSDKHTTPAuth
import AWSSDKIdentity
import ClientRuntime
import SmithyHTTPAuthAPI
import SmithyIdentityAPI

public class ElasticLoadBalancingClientEndpointPlugin: Plugin {
    private var endpointResolver: EndpointResolver
    public init(endpointResolver: EndpointResolver) {
        self.endpointResolver = endpointResolver
    }
    public convenience init() throws {
        self.init(endpointResolver: try DefaultEndpointResolver())
    }
    public func configureClient(clientConfiguration: ClientRuntime.ClientConfiguration) throws {
        if let config = clientConfiguration as? ElasticLoadBalancingClient.ElasticLoadBalancingClientConfiguration {
            config.endpointResolver = self.endpointResolver
        }
    }
}

public class DefaultAWSAuthSchemePlugin: Plugin {
    public init() {
    }
    public func configureClient(clientConfiguration: ClientRuntime.ClientConfiguration) throws {
        if let config = clientConfiguration as? ElasticLoadBalancingClient.ElasticLoadBalancingClientConfiguration {
            config.authSchemeResolver = DefaultElasticLoadBalancingAuthSchemeResolver()
            config.authSchemes = [SigV4AuthScheme()]
            config.awsCredentialIdentityResolver = try AWSClientConfigDefaultsProvider.awsCredentialIdentityResolver()
        }
    }
}

public class ElasticLoadBalancingClientAuthSchemePlugin: Plugin {
    private var authSchemes: [SmithyHTTPAuthAPI.AuthScheme]?
    private var authSchemeResolver: SmithyHTTPAuthAPI.AuthSchemeResolver?
    private var awsCredentialIdentityResolver: (any SmithyIdentityAPI.AWSCredentialIdentityResolver)?
    public init(authSchemes: [SmithyHTTPAuthAPI.AuthScheme]? = nil, authSchemeResolver: ElasticLoadBalancingAuthSchemeResolver? = nil, awsCredentialIdentityResolver: (any SmithyIdentityAPI.AWSCredentialIdentityResolver)? = nil) {
        self.authSchemeResolver = authSchemeResolver
        self.authSchemes = authSchemes
        self.awsCredentialIdentityResolver = awsCredentialIdentityResolver
    }
    public func configureClient(clientConfiguration: ClientRuntime.ClientConfiguration) throws {
        if let config = clientConfiguration as? ElasticLoadBalancingClient.ElasticLoadBalancingClientConfiguration {
            if (self.authSchemes != nil) {
                config.authSchemes = self.authSchemes
            }
            if (self.authSchemeResolver != nil) {
                config.authSchemeResolver = self.authSchemeResolver!
            }
            if (self.awsCredentialIdentityResolver != nil) {
                config.awsCredentialIdentityResolver = self.awsCredentialIdentityResolver!
            }
        }
    }
}
