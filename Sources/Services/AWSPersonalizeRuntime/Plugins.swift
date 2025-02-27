// Code generated by smithy-swift-codegen. DO NOT EDIT!

@_spi(FileBasedConfig) import AWSClientRuntime
import AWSSDKHTTPAuth
import AWSSDKIdentity
import ClientRuntime
import SmithyHTTPAuthAPI
import SmithyIdentityAPI

public class PersonalizeRuntimeClientEndpointPlugin: Plugin {
    private var endpointResolver: EndpointResolver
    public init(endpointResolver: EndpointResolver) {
        self.endpointResolver = endpointResolver
    }
    public convenience init() throws {
        self.init(endpointResolver: try DefaultEndpointResolver())
    }
    public func configureClient(clientConfiguration: ClientRuntime.ClientConfiguration) throws {
        if let config = clientConfiguration as? PersonalizeRuntimeClient.PersonalizeRuntimeClientConfiguration {
            config.endpointResolver = self.endpointResolver
        }
    }
}

public class DefaultAWSAuthSchemePlugin: Plugin {
    public init() {
    }
    public func configureClient(clientConfiguration: ClientRuntime.ClientConfiguration) throws {
        if let config = clientConfiguration as? PersonalizeRuntimeClient.PersonalizeRuntimeClientConfiguration {
            config.authSchemeResolver = DefaultPersonalizeRuntimeAuthSchemeResolver()
            config.authSchemes = [SigV4AuthScheme()]
            config.awsCredentialIdentityResolver = try AWSClientConfigDefaultsProvider.awsCredentialIdentityResolver()
        }
    }
}

public class PersonalizeRuntimeClientAuthSchemePlugin: Plugin {
    private var authSchemes: [SmithyHTTPAuthAPI.AuthScheme]?
    private var authSchemeResolver: SmithyHTTPAuthAPI.AuthSchemeResolver?
    private var awsCredentialIdentityResolver: (any SmithyIdentityAPI.AWSCredentialIdentityResolver)?
    public init(authSchemes: [SmithyHTTPAuthAPI.AuthScheme]? = nil, authSchemeResolver: PersonalizeRuntimeAuthSchemeResolver? = nil, awsCredentialIdentityResolver: (any SmithyIdentityAPI.AWSCredentialIdentityResolver)? = nil) {
        self.authSchemeResolver = authSchemeResolver
        self.authSchemes = authSchemes
        self.awsCredentialIdentityResolver = awsCredentialIdentityResolver
    }
    public func configureClient(clientConfiguration: ClientRuntime.ClientConfiguration) throws {
        if let config = clientConfiguration as? PersonalizeRuntimeClient.PersonalizeRuntimeClientConfiguration {
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
