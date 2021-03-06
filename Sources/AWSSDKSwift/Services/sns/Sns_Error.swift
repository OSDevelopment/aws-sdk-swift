// THIS FILE IS AUTOMATICALLY GENERATED by https://github.com/noppoMan/aws-sdk-swift/blob/master/Sources/CodeGenerator/main.swift. DO NOT EDIT.

import AWSSDKSwiftCore

/// Error enum for Sns
public enum SnsError: AWSErrorType {
    case throttledException(message: String?)
    case internalErrorException(message: String?)
    case authorizationErrorException(message: String?)
    case invalidParameterException(message: String?)
    case notFoundException(message: String?)
    case filterPolicyLimitExceededException(message: String?)
    case topicLimitExceededException(message: String?)
    case subscriptionLimitExceededException(message: String?)
    case invalidParameterValueException(message: String?)
    case endpointDisabledException(message: String?)
    case platformApplicationDisabledException(message: String?)
}

extension SnsError {
    public init?(errorCode: String, message: String?){
        var errorCode = errorCode
        if let index = errorCode.index(of: "#") {
            errorCode = String(errorCode[errorCode.index(index, offsetBy: 1)...])
        }
        switch errorCode {
        case "ThrottledException":
            self = .throttledException(message: message)
        case "InternalErrorException":
            self = .internalErrorException(message: message)
        case "AuthorizationErrorException":
            self = .authorizationErrorException(message: message)
        case "InvalidParameterException":
            self = .invalidParameterException(message: message)
        case "NotFoundException":
            self = .notFoundException(message: message)
        case "FilterPolicyLimitExceededException":
            self = .filterPolicyLimitExceededException(message: message)
        case "TopicLimitExceededException":
            self = .topicLimitExceededException(message: message)
        case "SubscriptionLimitExceededException":
            self = .subscriptionLimitExceededException(message: message)
        case "InvalidParameterValueException":
            self = .invalidParameterValueException(message: message)
        case "EndpointDisabledException":
            self = .endpointDisabledException(message: message)
        case "PlatformApplicationDisabledException":
            self = .platformApplicationDisabledException(message: message)
        default:
            return nil
        }
    }
}