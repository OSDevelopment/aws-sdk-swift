// THIS FILE IS AUTOMATICALLY GENERATED by https://github.com/noppoMan/aws-sdk-swift/blob/master/Sources/CodeGenerator/main.swift. DO NOT EDIT.

import AWSSDKSwiftCore

/// Error enum for KinesisVideoArchivedMedia
public enum KinesisVideoArchivedMediaError: AWSErrorType {
    case resourceNotFoundException(message: String?)
    case invalidArgumentException(message: String?)
    case clientLimitExceededException(message: String?)
    case notAuthorizedException(message: String?)
    case unsupportedStreamMediaTypeException(message: String?)
    case noDataRetentionException(message: String?)
    case missingCodecPrivateDataException(message: String?)
    case invalidCodecPrivateDataException(message: String?)
}

extension KinesisVideoArchivedMediaError {
    public init?(errorCode: String, message: String?){
        var errorCode = errorCode
        if let index = errorCode.index(of: "#") {
            errorCode = String(errorCode[errorCode.index(index, offsetBy: 1)...])
        }
        switch errorCode {
        case "ResourceNotFoundException":
            self = .resourceNotFoundException(message: message)
        case "InvalidArgumentException":
            self = .invalidArgumentException(message: message)
        case "ClientLimitExceededException":
            self = .clientLimitExceededException(message: message)
        case "NotAuthorizedException":
            self = .notAuthorizedException(message: message)
        case "UnsupportedStreamMediaTypeException":
            self = .unsupportedStreamMediaTypeException(message: message)
        case "NoDataRetentionException":
            self = .noDataRetentionException(message: message)
        case "MissingCodecPrivateDataException":
            self = .missingCodecPrivateDataException(message: message)
        case "InvalidCodecPrivateDataException":
            self = .invalidCodecPrivateDataException(message: message)
        default:
            return nil
        }
    }
}