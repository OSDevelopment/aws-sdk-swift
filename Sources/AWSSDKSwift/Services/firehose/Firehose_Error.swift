// THIS FILE IS AUTOMATICALLY GENERATED by https://github.com/noppoMan/aws-sdk-swift/blob/master/Sources/CodeGenerator/main.swift. DO NOT EDIT.

import AWSSDKSwiftCore

/// Error enum for Firehose
public enum FirehoseError: AWSErrorType {
    case resourceNotFoundException(message: String?)
    case resourceInUseException(message: String?)
    case invalidArgumentException(message: String?)
    case limitExceededException(message: String?)
    case serviceUnavailableException(message: String?)
    case concurrentModificationException(message: String?)
}

extension FirehoseError {
    public init?(errorCode: String, message: String?){
        var errorCode = errorCode
        if let index = errorCode.index(of: "#") {
            errorCode = String(errorCode[errorCode.index(index, offsetBy: 1)...])
        }
        switch errorCode {
        case "ResourceNotFoundException":
            self = .resourceNotFoundException(message: message)
        case "ResourceInUseException":
            self = .resourceInUseException(message: message)
        case "InvalidArgumentException":
            self = .invalidArgumentException(message: message)
        case "LimitExceededException":
            self = .limitExceededException(message: message)
        case "ServiceUnavailableException":
            self = .serviceUnavailableException(message: message)
        case "ConcurrentModificationException":
            self = .concurrentModificationException(message: message)
        default:
            return nil
        }
    }
}