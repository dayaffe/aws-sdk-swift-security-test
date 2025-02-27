// Code generated by smithy-swift-codegen. DO NOT EDIT!

@_spi(FileBasedConfig) import AWSClientRuntime
import AWSSDKHTTPAuth
import ClientRuntime
import Foundation
import Logging
import Smithy
import SmithyHTTPAPI
import SmithyHTTPAuthAPI
import SmithyIdentityAPI
import SmithyJSON
import SmithyReadWrite
import SmithyRetries
import SmithyRetriesAPI
import Swift
import enum ClientRuntime.ClientLogMode
import enum ClientRuntime.SDKLogLevel
import protocol ClientRuntime.IdempotencyTokenGenerator
import protocol ClientRuntime.SDKLogHandlerFactory
import protocol ClientRuntime.TelemetryProvider

public class IoTJobsDataPlaneClient: Client {
    public static let clientName = "IoTJobsDataPlaneClient"
    let client: ClientRuntime.SdkHttpClient
    let config: IoTJobsDataPlaneClient.IoTJobsDataPlaneClientConfiguration
    let serviceName = "IoT Jobs Data Plane"

    public required init(config: IoTJobsDataPlaneClient.IoTJobsDataPlaneClientConfiguration) {
        client = ClientRuntime.SdkHttpClient(engine: config.httpClientEngine, config: config.httpClientConfiguration)
        self.config = config
    }

    public convenience init(region: Swift.String) throws {
        let config = try IoTJobsDataPlaneClient.IoTJobsDataPlaneClientConfiguration(region: region)
        self.init(config: config)
    }

    public convenience required init() async throws {
        let config = try await IoTJobsDataPlaneClient.IoTJobsDataPlaneClientConfiguration()
        self.init(config: config)
    }
}

extension IoTJobsDataPlaneClient {
    public class IoTJobsDataPlaneClientConfiguration: AWSDefaultClientConfiguration & AWSRegionClientConfiguration & DefaultClientConfiguration & DefaultHttpClientConfiguration {
        public var useFIPS: Swift.Bool?

        public var useDualStack: Swift.Bool?

        public var appID: Swift.String?

        public var awsCredentialIdentityResolver: any SmithyIdentityAPI.AWSCredentialIdentityResolver

        public var awsRetryMode: AWSClientRuntime.AWSRetryMode

        public var region: Swift.String?

        public var signingRegion: Swift.String?

        public var endpointResolver: EndpointResolver

        public var telemetryProvider: ClientRuntime.TelemetryProvider

        public var retryStrategyOptions: SmithyRetriesAPI.RetryStrategyOptions

        public var clientLogMode: ClientRuntime.ClientLogMode

        public var endpoint: Swift.String?

        public var idempotencyTokenGenerator: ClientRuntime.IdempotencyTokenGenerator

        public var httpClientEngine: SmithyHTTPAPI.HTTPClient

        public var httpClientConfiguration: ClientRuntime.HttpClientConfiguration

        public var authSchemes: [SmithyHTTPAuthAPI.AuthScheme]?

        public var authSchemeResolver: SmithyHTTPAuthAPI.AuthSchemeResolver

        internal let logger: Smithy.LogAgent

        private init(_ useFIPS: Swift.Bool?, _ useDualStack: Swift.Bool?, _ appID: Swift.String?, _ awsCredentialIdentityResolver: any SmithyIdentityAPI.AWSCredentialIdentityResolver, _ awsRetryMode: AWSClientRuntime.AWSRetryMode, _ region: Swift.String?, _ signingRegion: Swift.String?, _ endpointResolver: EndpointResolver, _ telemetryProvider: ClientRuntime.TelemetryProvider, _ retryStrategyOptions: SmithyRetriesAPI.RetryStrategyOptions, _ clientLogMode: ClientRuntime.ClientLogMode, _ endpoint: Swift.String?, _ idempotencyTokenGenerator: ClientRuntime.IdempotencyTokenGenerator, _ httpClientEngine: SmithyHTTPAPI.HTTPClient, _ httpClientConfiguration: ClientRuntime.HttpClientConfiguration, _ authSchemes: [SmithyHTTPAuthAPI.AuthScheme]?, _ authSchemeResolver: SmithyHTTPAuthAPI.AuthSchemeResolver) {
            self.useFIPS = useFIPS
            self.useDualStack = useDualStack
            self.appID = appID
            self.awsCredentialIdentityResolver = awsCredentialIdentityResolver
            self.awsRetryMode = awsRetryMode
            self.region = region
            self.signingRegion = signingRegion
            self.endpointResolver = endpointResolver
            self.telemetryProvider = telemetryProvider
            self.retryStrategyOptions = retryStrategyOptions
            self.clientLogMode = clientLogMode
            self.endpoint = endpoint
            self.idempotencyTokenGenerator = idempotencyTokenGenerator
            self.httpClientEngine = httpClientEngine
            self.httpClientConfiguration = httpClientConfiguration
            self.authSchemes = authSchemes
            self.authSchemeResolver = authSchemeResolver
            self.logger = telemetryProvider.loggerProvider.getLogger(name: IoTJobsDataPlaneClient.clientName)
        }

        public convenience init(useFIPS: Swift.Bool? = nil, useDualStack: Swift.Bool? = nil, appID: Swift.String? = nil, awsCredentialIdentityResolver: (any SmithyIdentityAPI.AWSCredentialIdentityResolver)? = nil, awsRetryMode: AWSClientRuntime.AWSRetryMode? = nil, region: Swift.String? = nil, signingRegion: Swift.String? = nil, endpointResolver: EndpointResolver? = nil, telemetryProvider: ClientRuntime.TelemetryProvider? = nil, retryStrategyOptions: SmithyRetriesAPI.RetryStrategyOptions? = nil, clientLogMode: ClientRuntime.ClientLogMode? = nil, endpoint: Swift.String? = nil, idempotencyTokenGenerator: ClientRuntime.IdempotencyTokenGenerator? = nil, httpClientEngine: SmithyHTTPAPI.HTTPClient? = nil, httpClientConfiguration: ClientRuntime.HttpClientConfiguration? = nil, authSchemes: [SmithyHTTPAuthAPI.AuthScheme]? = nil, authSchemeResolver: SmithyHTTPAuthAPI.AuthSchemeResolver? = nil) throws {
            self.init(useFIPS, useDualStack, try appID ?? AWSClientConfigDefaultsProvider.appID(), try awsCredentialIdentityResolver ?? AWSClientConfigDefaultsProvider.awsCredentialIdentityResolver(awsCredentialIdentityResolver), try awsRetryMode ?? AWSClientConfigDefaultsProvider.retryMode(), region, signingRegion, try endpointResolver ?? DefaultEndpointResolver(), telemetryProvider ?? ClientRuntime.DefaultTelemetry.provider, try retryStrategyOptions ?? AWSClientConfigDefaultsProvider.retryStrategyOptions(), clientLogMode ?? AWSClientConfigDefaultsProvider.clientLogMode, endpoint, idempotencyTokenGenerator ?? AWSClientConfigDefaultsProvider.idempotencyTokenGenerator, httpClientEngine ?? AWSClientConfigDefaultsProvider.httpClientEngine, httpClientConfiguration ?? AWSClientConfigDefaultsProvider.httpClientConfiguration, authSchemes ?? [SigV4AuthScheme()], authSchemeResolver ?? DefaultIoTJobsDataPlaneAuthSchemeResolver())
        }

        public convenience init(useFIPS: Swift.Bool? = nil, useDualStack: Swift.Bool? = nil, appID: Swift.String? = nil, awsCredentialIdentityResolver: (any SmithyIdentityAPI.AWSCredentialIdentityResolver)? = nil, awsRetryMode: AWSClientRuntime.AWSRetryMode? = nil, region: Swift.String? = nil, signingRegion: Swift.String? = nil, endpointResolver: EndpointResolver? = nil, telemetryProvider: ClientRuntime.TelemetryProvider? = nil, retryStrategyOptions: SmithyRetriesAPI.RetryStrategyOptions? = nil, clientLogMode: ClientRuntime.ClientLogMode? = nil, endpoint: Swift.String? = nil, idempotencyTokenGenerator: ClientRuntime.IdempotencyTokenGenerator? = nil, httpClientEngine: SmithyHTTPAPI.HTTPClient? = nil, httpClientConfiguration: ClientRuntime.HttpClientConfiguration? = nil, authSchemes: [SmithyHTTPAuthAPI.AuthScheme]? = nil, authSchemeResolver: SmithyHTTPAuthAPI.AuthSchemeResolver? = nil) async throws {
            self.init(useFIPS, useDualStack, try appID ?? AWSClientConfigDefaultsProvider.appID(), try awsCredentialIdentityResolver ?? AWSClientConfigDefaultsProvider.awsCredentialIdentityResolver(awsCredentialIdentityResolver), try awsRetryMode ?? AWSClientConfigDefaultsProvider.retryMode(), try await AWSClientConfigDefaultsProvider.region(region), try await AWSClientConfigDefaultsProvider.region(region), try endpointResolver ?? DefaultEndpointResolver(), telemetryProvider ?? ClientRuntime.DefaultTelemetry.provider, try retryStrategyOptions ?? AWSClientConfigDefaultsProvider.retryStrategyOptions(), clientLogMode ?? AWSClientConfigDefaultsProvider.clientLogMode, endpoint, idempotencyTokenGenerator ?? AWSClientConfigDefaultsProvider.idempotencyTokenGenerator, httpClientEngine ?? AWSClientConfigDefaultsProvider.httpClientEngine, httpClientConfiguration ?? AWSClientConfigDefaultsProvider.httpClientConfiguration, authSchemes ?? [SigV4AuthScheme()], authSchemeResolver ?? DefaultIoTJobsDataPlaneAuthSchemeResolver())
        }

        public convenience required init() async throws {
            try await self.init(useFIPS: nil, useDualStack: nil, appID: nil, awsCredentialIdentityResolver: nil, awsRetryMode: nil, region: nil, signingRegion: nil, endpointResolver: nil, telemetryProvider: nil, retryStrategyOptions: nil, clientLogMode: nil, endpoint: nil, idempotencyTokenGenerator: nil, httpClientEngine: nil, httpClientConfiguration: nil, authSchemes: nil, authSchemeResolver: nil)
        }

        public convenience init(region: String) throws {
            self.init(nil, nil, try AWSClientConfigDefaultsProvider.appID(), try AWSClientConfigDefaultsProvider.awsCredentialIdentityResolver(), try AWSClientConfigDefaultsProvider.retryMode(), region, region, try DefaultEndpointResolver(), ClientRuntime.DefaultTelemetry.provider, try AWSClientConfigDefaultsProvider.retryStrategyOptions(), AWSClientConfigDefaultsProvider.clientLogMode, nil, AWSClientConfigDefaultsProvider.idempotencyTokenGenerator, AWSClientConfigDefaultsProvider.httpClientEngine, AWSClientConfigDefaultsProvider.httpClientConfiguration, [SigV4AuthScheme()], DefaultIoTJobsDataPlaneAuthSchemeResolver())
        }

        public var partitionID: String? {
            return "\(IoTJobsDataPlaneClient.clientName) - \(region ?? "")"
        }
    }

    public static func builder() -> ClientBuilder<IoTJobsDataPlaneClient> {
        return ClientBuilder<IoTJobsDataPlaneClient>(defaultPlugins: [
            ClientRuntime.DefaultClientPlugin(),
            AWSClientRuntime.DefaultAWSClientPlugin(clientName: self.clientName),
            DefaultAWSAuthSchemePlugin()
        ])
    }
}

public struct IoTJobsDataPlaneClientLogHandlerFactory: ClientRuntime.SDKLogHandlerFactory {
    public var label = "IoTJobsDataPlaneClient"
    let logLevel: ClientRuntime.SDKLogLevel
    public func construct(label: String) -> LogHandler {
        var handler = StreamLogHandler.standardOutput(label: label)
        handler.logLevel = logLevel.toLoggerType()
        return handler
    }
    public init(logLevel: ClientRuntime.SDKLogLevel) {
        self.logLevel = logLevel
    }
}

extension IoTJobsDataPlaneClient {
    /// Performs the `DescribeJobExecution` operation on the `IotLaserThingJobManagerExternalService` service.
    ///
    /// Gets details of a job execution.
    ///
    /// - Parameter DescribeJobExecutionInput : [no documentation found]
    ///
    /// - Returns: `DescribeJobExecutionOutput` : [no documentation found]
    ///
    /// - Throws: One of the exceptions listed below __Possible Exceptions__.
    ///
    /// __Possible Exceptions:__
    /// - `CertificateValidationException` : The certificate is invalid.
    /// - `InvalidRequestException` : The contents of the request were invalid. For example, this code is returned when an UpdateJobExecution request contains invalid status details. The message contains details about the error.
    /// - `ResourceNotFoundException` : The specified resource does not exist.
    /// - `ServiceUnavailableException` : The service is temporarily unavailable.
    /// - `TerminalStateException` : The job is in a terminal state.
    /// - `ThrottlingException` : The rate exceeds the limit.
    public func describeJobExecution(input: DescribeJobExecutionInput) async throws -> DescribeJobExecutionOutput {
        let context = Smithy.ContextBuilder()
                      .withMethod(value: .get)
                      .withServiceName(value: serviceName)
                      .withOperation(value: "describeJobExecution")
                      .withIdempotencyTokenGenerator(value: config.idempotencyTokenGenerator)
                      .withLogger(value: config.logger)
                      .withPartitionID(value: config.partitionID)
                      .withAuthSchemes(value: config.authSchemes ?? [])
                      .withAuthSchemeResolver(value: config.authSchemeResolver)
                      .withUnsignedPayloadTrait(value: false)
                      .withSocketTimeout(value: config.httpClientConfiguration.socketTimeout)
                      .withIdentityResolver(value: config.awsCredentialIdentityResolver, schemeID: "aws.auth#sigv4")
                      .withIdentityResolver(value: config.awsCredentialIdentityResolver, schemeID: "aws.auth#sigv4a")
                      .withRegion(value: config.region)
                      .withSigningName(value: "iot-jobs-data")
                      .withSigningRegion(value: config.signingRegion)
                      .build()
        var operation = ClientRuntime.OperationStack<DescribeJobExecutionInput, DescribeJobExecutionOutput>(id: "describeJobExecution")
        operation.initializeStep.intercept(position: .after, middleware: ClientRuntime.URLPathMiddleware<DescribeJobExecutionInput, DescribeJobExecutionOutput>(DescribeJobExecutionInput.urlPathProvider(_:)))
        operation.initializeStep.intercept(position: .after, middleware: ClientRuntime.URLHostMiddleware<DescribeJobExecutionInput, DescribeJobExecutionOutput>())
        let endpointParams = EndpointParams(endpoint: config.endpoint, region: config.region, useDualStack: config.useDualStack ?? false, useFIPS: config.useFIPS ?? false)
        operation.buildStep.intercept(position: .before, middleware: EndpointResolverMiddleware<DescribeJobExecutionOutput>(endpointResolver: config.endpointResolver, endpointParams: endpointParams))
        operation.buildStep.intercept(position: .before, middleware: AWSClientRuntime.UserAgentMiddleware<DescribeJobExecutionInput, DescribeJobExecutionOutput>(metadata: AWSClientRuntime.AWSUserAgentMetadata.fromConfig(serviceID: serviceName, version: "1.0", config: config)))
        operation.buildStep.intercept(position: .before, middleware: ClientRuntime.AuthSchemeMiddleware<DescribeJobExecutionOutput>())
        operation.serializeStep.intercept(position: .after, middleware: ClientRuntime.QueryItemMiddleware<DescribeJobExecutionInput, DescribeJobExecutionOutput>(DescribeJobExecutionInput.queryItemProvider(_:)))
        operation.finalizeStep.intercept(position: .after, middleware: ClientRuntime.RetryMiddleware<SmithyRetries.DefaultRetryStrategy, AWSClientRuntime.AWSRetryErrorInfoProvider, DescribeJobExecutionOutput>(options: config.retryStrategyOptions))
        operation.finalizeStep.intercept(position: .before, middleware: ClientRuntime.SignerMiddleware<DescribeJobExecutionOutput>())
        operation.deserializeStep.intercept(position: .after, middleware: ClientRuntime.DeserializeMiddleware<DescribeJobExecutionOutput>(DescribeJobExecutionOutput.httpOutput(from:), DescribeJobExecutionOutputError.httpError(from:)))
        operation.deserializeStep.intercept(position: .after, middleware: ClientRuntime.LoggerMiddleware<DescribeJobExecutionInput, DescribeJobExecutionOutput>(clientLogMode: config.clientLogMode))
        let result = try await operation.handleMiddleware(context: context, input: input, next: client.getHandler())
        return result
    }

    /// Performs the `GetPendingJobExecutions` operation on the `IotLaserThingJobManagerExternalService` service.
    ///
    /// Gets the list of all jobs for a thing that are not in a terminal status.
    ///
    /// - Parameter GetPendingJobExecutionsInput : [no documentation found]
    ///
    /// - Returns: `GetPendingJobExecutionsOutput` : [no documentation found]
    ///
    /// - Throws: One of the exceptions listed below __Possible Exceptions__.
    ///
    /// __Possible Exceptions:__
    /// - `CertificateValidationException` : The certificate is invalid.
    /// - `InvalidRequestException` : The contents of the request were invalid. For example, this code is returned when an UpdateJobExecution request contains invalid status details. The message contains details about the error.
    /// - `ResourceNotFoundException` : The specified resource does not exist.
    /// - `ServiceUnavailableException` : The service is temporarily unavailable.
    /// - `ThrottlingException` : The rate exceeds the limit.
    public func getPendingJobExecutions(input: GetPendingJobExecutionsInput) async throws -> GetPendingJobExecutionsOutput {
        let context = Smithy.ContextBuilder()
                      .withMethod(value: .get)
                      .withServiceName(value: serviceName)
                      .withOperation(value: "getPendingJobExecutions")
                      .withIdempotencyTokenGenerator(value: config.idempotencyTokenGenerator)
                      .withLogger(value: config.logger)
                      .withPartitionID(value: config.partitionID)
                      .withAuthSchemes(value: config.authSchemes ?? [])
                      .withAuthSchemeResolver(value: config.authSchemeResolver)
                      .withUnsignedPayloadTrait(value: false)
                      .withSocketTimeout(value: config.httpClientConfiguration.socketTimeout)
                      .withIdentityResolver(value: config.awsCredentialIdentityResolver, schemeID: "aws.auth#sigv4")
                      .withIdentityResolver(value: config.awsCredentialIdentityResolver, schemeID: "aws.auth#sigv4a")
                      .withRegion(value: config.region)
                      .withSigningName(value: "iot-jobs-data")
                      .withSigningRegion(value: config.signingRegion)
                      .build()
        var operation = ClientRuntime.OperationStack<GetPendingJobExecutionsInput, GetPendingJobExecutionsOutput>(id: "getPendingJobExecutions")
        operation.initializeStep.intercept(position: .after, middleware: ClientRuntime.URLPathMiddleware<GetPendingJobExecutionsInput, GetPendingJobExecutionsOutput>(GetPendingJobExecutionsInput.urlPathProvider(_:)))
        operation.initializeStep.intercept(position: .after, middleware: ClientRuntime.URLHostMiddleware<GetPendingJobExecutionsInput, GetPendingJobExecutionsOutput>())
        let endpointParams = EndpointParams(endpoint: config.endpoint, region: config.region, useDualStack: config.useDualStack ?? false, useFIPS: config.useFIPS ?? false)
        operation.buildStep.intercept(position: .before, middleware: EndpointResolverMiddleware<GetPendingJobExecutionsOutput>(endpointResolver: config.endpointResolver, endpointParams: endpointParams))
        operation.buildStep.intercept(position: .before, middleware: AWSClientRuntime.UserAgentMiddleware<GetPendingJobExecutionsInput, GetPendingJobExecutionsOutput>(metadata: AWSClientRuntime.AWSUserAgentMetadata.fromConfig(serviceID: serviceName, version: "1.0", config: config)))
        operation.buildStep.intercept(position: .before, middleware: ClientRuntime.AuthSchemeMiddleware<GetPendingJobExecutionsOutput>())
        operation.finalizeStep.intercept(position: .after, middleware: ClientRuntime.RetryMiddleware<SmithyRetries.DefaultRetryStrategy, AWSClientRuntime.AWSRetryErrorInfoProvider, GetPendingJobExecutionsOutput>(options: config.retryStrategyOptions))
        operation.finalizeStep.intercept(position: .before, middleware: ClientRuntime.SignerMiddleware<GetPendingJobExecutionsOutput>())
        operation.deserializeStep.intercept(position: .after, middleware: ClientRuntime.DeserializeMiddleware<GetPendingJobExecutionsOutput>(GetPendingJobExecutionsOutput.httpOutput(from:), GetPendingJobExecutionsOutputError.httpError(from:)))
        operation.deserializeStep.intercept(position: .after, middleware: ClientRuntime.LoggerMiddleware<GetPendingJobExecutionsInput, GetPendingJobExecutionsOutput>(clientLogMode: config.clientLogMode))
        let result = try await operation.handleMiddleware(context: context, input: input, next: client.getHandler())
        return result
    }

    /// Performs the `StartNextPendingJobExecution` operation on the `IotLaserThingJobManagerExternalService` service.
    ///
    /// Gets and starts the next pending (status IN_PROGRESS or QUEUED) job execution for a thing.
    ///
    /// - Parameter StartNextPendingJobExecutionInput : [no documentation found]
    ///
    /// - Returns: `StartNextPendingJobExecutionOutput` : [no documentation found]
    ///
    /// - Throws: One of the exceptions listed below __Possible Exceptions__.
    ///
    /// __Possible Exceptions:__
    /// - `CertificateValidationException` : The certificate is invalid.
    /// - `InvalidRequestException` : The contents of the request were invalid. For example, this code is returned when an UpdateJobExecution request contains invalid status details. The message contains details about the error.
    /// - `ResourceNotFoundException` : The specified resource does not exist.
    /// - `ServiceUnavailableException` : The service is temporarily unavailable.
    /// - `ThrottlingException` : The rate exceeds the limit.
    public func startNextPendingJobExecution(input: StartNextPendingJobExecutionInput) async throws -> StartNextPendingJobExecutionOutput {
        let context = Smithy.ContextBuilder()
                      .withMethod(value: .put)
                      .withServiceName(value: serviceName)
                      .withOperation(value: "startNextPendingJobExecution")
                      .withIdempotencyTokenGenerator(value: config.idempotencyTokenGenerator)
                      .withLogger(value: config.logger)
                      .withPartitionID(value: config.partitionID)
                      .withAuthSchemes(value: config.authSchemes ?? [])
                      .withAuthSchemeResolver(value: config.authSchemeResolver)
                      .withUnsignedPayloadTrait(value: false)
                      .withSocketTimeout(value: config.httpClientConfiguration.socketTimeout)
                      .withIdentityResolver(value: config.awsCredentialIdentityResolver, schemeID: "aws.auth#sigv4")
                      .withIdentityResolver(value: config.awsCredentialIdentityResolver, schemeID: "aws.auth#sigv4a")
                      .withRegion(value: config.region)
                      .withSigningName(value: "iot-jobs-data")
                      .withSigningRegion(value: config.signingRegion)
                      .build()
        var operation = ClientRuntime.OperationStack<StartNextPendingJobExecutionInput, StartNextPendingJobExecutionOutput>(id: "startNextPendingJobExecution")
        operation.initializeStep.intercept(position: .after, middleware: ClientRuntime.URLPathMiddleware<StartNextPendingJobExecutionInput, StartNextPendingJobExecutionOutput>(StartNextPendingJobExecutionInput.urlPathProvider(_:)))
        operation.initializeStep.intercept(position: .after, middleware: ClientRuntime.URLHostMiddleware<StartNextPendingJobExecutionInput, StartNextPendingJobExecutionOutput>())
        let endpointParams = EndpointParams(endpoint: config.endpoint, region: config.region, useDualStack: config.useDualStack ?? false, useFIPS: config.useFIPS ?? false)
        operation.buildStep.intercept(position: .before, middleware: EndpointResolverMiddleware<StartNextPendingJobExecutionOutput>(endpointResolver: config.endpointResolver, endpointParams: endpointParams))
        operation.buildStep.intercept(position: .before, middleware: AWSClientRuntime.UserAgentMiddleware<StartNextPendingJobExecutionInput, StartNextPendingJobExecutionOutput>(metadata: AWSClientRuntime.AWSUserAgentMetadata.fromConfig(serviceID: serviceName, version: "1.0", config: config)))
        operation.buildStep.intercept(position: .before, middleware: ClientRuntime.AuthSchemeMiddleware<StartNextPendingJobExecutionOutput>())
        operation.serializeStep.intercept(position: .after, middleware: ContentTypeMiddleware<StartNextPendingJobExecutionInput, StartNextPendingJobExecutionOutput>(contentType: "application/json"))
        operation.serializeStep.intercept(position: .after, middleware: ClientRuntime.BodyMiddleware<StartNextPendingJobExecutionInput, StartNextPendingJobExecutionOutput, SmithyJSON.Writer>(rootNodeInfo: "", inputWritingClosure: StartNextPendingJobExecutionInput.write(value:to:)))
        operation.finalizeStep.intercept(position: .before, middleware: ClientRuntime.ContentLengthMiddleware<StartNextPendingJobExecutionInput, StartNextPendingJobExecutionOutput>())
        operation.finalizeStep.intercept(position: .after, middleware: ClientRuntime.RetryMiddleware<SmithyRetries.DefaultRetryStrategy, AWSClientRuntime.AWSRetryErrorInfoProvider, StartNextPendingJobExecutionOutput>(options: config.retryStrategyOptions))
        operation.finalizeStep.intercept(position: .before, middleware: ClientRuntime.SignerMiddleware<StartNextPendingJobExecutionOutput>())
        operation.deserializeStep.intercept(position: .after, middleware: ClientRuntime.DeserializeMiddleware<StartNextPendingJobExecutionOutput>(StartNextPendingJobExecutionOutput.httpOutput(from:), StartNextPendingJobExecutionOutputError.httpError(from:)))
        operation.deserializeStep.intercept(position: .after, middleware: ClientRuntime.LoggerMiddleware<StartNextPendingJobExecutionInput, StartNextPendingJobExecutionOutput>(clientLogMode: config.clientLogMode))
        let result = try await operation.handleMiddleware(context: context, input: input, next: client.getHandler())
        return result
    }

    /// Performs the `UpdateJobExecution` operation on the `IotLaserThingJobManagerExternalService` service.
    ///
    /// Updates the status of a job execution.
    ///
    /// - Parameter UpdateJobExecutionInput : [no documentation found]
    ///
    /// - Returns: `UpdateJobExecutionOutput` : [no documentation found]
    ///
    /// - Throws: One of the exceptions listed below __Possible Exceptions__.
    ///
    /// __Possible Exceptions:__
    /// - `CertificateValidationException` : The certificate is invalid.
    /// - `InvalidRequestException` : The contents of the request were invalid. For example, this code is returned when an UpdateJobExecution request contains invalid status details. The message contains details about the error.
    /// - `InvalidStateTransitionException` : An update attempted to change the job execution to a state that is invalid because of the job execution's current state (for example, an attempt to change a request in state SUCCESS to state IN_PROGRESS). In this case, the body of the error message also contains the executionState field.
    /// - `ResourceNotFoundException` : The specified resource does not exist.
    /// - `ServiceUnavailableException` : The service is temporarily unavailable.
    /// - `ThrottlingException` : The rate exceeds the limit.
    public func updateJobExecution(input: UpdateJobExecutionInput) async throws -> UpdateJobExecutionOutput {
        let context = Smithy.ContextBuilder()
                      .withMethod(value: .post)
                      .withServiceName(value: serviceName)
                      .withOperation(value: "updateJobExecution")
                      .withIdempotencyTokenGenerator(value: config.idempotencyTokenGenerator)
                      .withLogger(value: config.logger)
                      .withPartitionID(value: config.partitionID)
                      .withAuthSchemes(value: config.authSchemes ?? [])
                      .withAuthSchemeResolver(value: config.authSchemeResolver)
                      .withUnsignedPayloadTrait(value: false)
                      .withSocketTimeout(value: config.httpClientConfiguration.socketTimeout)
                      .withIdentityResolver(value: config.awsCredentialIdentityResolver, schemeID: "aws.auth#sigv4")
                      .withIdentityResolver(value: config.awsCredentialIdentityResolver, schemeID: "aws.auth#sigv4a")
                      .withRegion(value: config.region)
                      .withSigningName(value: "iot-jobs-data")
                      .withSigningRegion(value: config.signingRegion)
                      .build()
        var operation = ClientRuntime.OperationStack<UpdateJobExecutionInput, UpdateJobExecutionOutput>(id: "updateJobExecution")
        operation.initializeStep.intercept(position: .after, middleware: ClientRuntime.URLPathMiddleware<UpdateJobExecutionInput, UpdateJobExecutionOutput>(UpdateJobExecutionInput.urlPathProvider(_:)))
        operation.initializeStep.intercept(position: .after, middleware: ClientRuntime.URLHostMiddleware<UpdateJobExecutionInput, UpdateJobExecutionOutput>())
        let endpointParams = EndpointParams(endpoint: config.endpoint, region: config.region, useDualStack: config.useDualStack ?? false, useFIPS: config.useFIPS ?? false)
        operation.buildStep.intercept(position: .before, middleware: EndpointResolverMiddleware<UpdateJobExecutionOutput>(endpointResolver: config.endpointResolver, endpointParams: endpointParams))
        operation.buildStep.intercept(position: .before, middleware: AWSClientRuntime.UserAgentMiddleware<UpdateJobExecutionInput, UpdateJobExecutionOutput>(metadata: AWSClientRuntime.AWSUserAgentMetadata.fromConfig(serviceID: serviceName, version: "1.0", config: config)))
        operation.buildStep.intercept(position: .before, middleware: ClientRuntime.AuthSchemeMiddleware<UpdateJobExecutionOutput>())
        operation.serializeStep.intercept(position: .after, middleware: ContentTypeMiddleware<UpdateJobExecutionInput, UpdateJobExecutionOutput>(contentType: "application/json"))
        operation.serializeStep.intercept(position: .after, middleware: ClientRuntime.BodyMiddleware<UpdateJobExecutionInput, UpdateJobExecutionOutput, SmithyJSON.Writer>(rootNodeInfo: "", inputWritingClosure: UpdateJobExecutionInput.write(value:to:)))
        operation.finalizeStep.intercept(position: .before, middleware: ClientRuntime.ContentLengthMiddleware<UpdateJobExecutionInput, UpdateJobExecutionOutput>())
        operation.finalizeStep.intercept(position: .after, middleware: ClientRuntime.RetryMiddleware<SmithyRetries.DefaultRetryStrategy, AWSClientRuntime.AWSRetryErrorInfoProvider, UpdateJobExecutionOutput>(options: config.retryStrategyOptions))
        operation.finalizeStep.intercept(position: .before, middleware: ClientRuntime.SignerMiddleware<UpdateJobExecutionOutput>())
        operation.deserializeStep.intercept(position: .after, middleware: ClientRuntime.DeserializeMiddleware<UpdateJobExecutionOutput>(UpdateJobExecutionOutput.httpOutput(from:), UpdateJobExecutionOutputError.httpError(from:)))
        operation.deserializeStep.intercept(position: .after, middleware: ClientRuntime.LoggerMiddleware<UpdateJobExecutionInput, UpdateJobExecutionOutput>(clientLogMode: config.clientLogMode))
        let result = try await operation.handleMiddleware(context: context, input: input, next: client.getHandler())
        return result
    }

}
