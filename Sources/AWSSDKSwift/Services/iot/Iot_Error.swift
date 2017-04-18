// THIS FILE IS AUTOMATICALLY GENERATED. DO NOT EDIT.
/**
The MIT License (MIT)

Copyright (c) 2017 Yuki Takei(noppoMan)

Permission is hereby granted, free of charge, to any person obtaining a copy
of this software and associated documentation files (the "Software"), to deal
in the Software without restriction, including without limitation the rights
to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
copies of the Software, and to permit persons to whom the Software is
furnished to do so, subject to the following conditions:

The above copyright notice and this permission notice shall be included in all
copies or substantial portions of the Software.

THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE
SOFTWARE.

*/

import Core

/// Error enum for Iot
public enum IotError: AWSErrorType {
    case resourceNotFoundException(message: String?)
    case certificateStateException(message: String?)
    case invalidRequestException(message: String?)
    case throttlingException(message: String?)
    case unauthorizedException(message: String?)
    case serviceUnavailableException(message: String?)
    case internalFailureException(message: String?)
    case deleteConflictException(message: String?)
    case transferAlreadyCompletedException(message: String?)
    case limitExceededException(message: String?)
    case sqlParseException(message: String?)
    case internalException(message: String?)
    case resourceAlreadyExistsException(message: String?)
    case certificateValidationException(message: String?)
    case certificateConflictException(message: String?)
    case malformedPolicyException(message: String?)
    case transferConflictException(message: String?)
    case versionConflictException(message: String?)
    case versionsLimitExceededException(message: String?)
    case registrationCodeValidationException(message: String?)
}

extension IotError {
    public init?(errorCode: String, message: String?){
        switch errorCode {
        case "ResourceNotFoundException":
            self = .resourceNotFoundException(message: message)
        case "CertificateStateException":
            self = .certificateStateException(message: message)
        case "InvalidRequestException":
            self = .invalidRequestException(message: message)
        case "ThrottlingException":
            self = .throttlingException(message: message)
        case "UnauthorizedException":
            self = .unauthorizedException(message: message)
        case "ServiceUnavailableException":
            self = .serviceUnavailableException(message: message)
        case "InternalFailureException":
            self = .internalFailureException(message: message)
        case "DeleteConflictException":
            self = .deleteConflictException(message: message)
        case "TransferAlreadyCompletedException":
            self = .transferAlreadyCompletedException(message: message)
        case "LimitExceededException":
            self = .limitExceededException(message: message)
        case "SqlParseException":
            self = .sqlParseException(message: message)
        case "InternalException":
            self = .internalException(message: message)
        case "ResourceAlreadyExistsException":
            self = .resourceAlreadyExistsException(message: message)
        case "CertificateValidationException":
            self = .certificateValidationException(message: message)
        case "CertificateConflictException":
            self = .certificateConflictException(message: message)
        case "MalformedPolicyException":
            self = .malformedPolicyException(message: message)
        case "TransferConflictException":
            self = .transferConflictException(message: message)
        case "VersionConflictException":
            self = .versionConflictException(message: message)
        case "VersionsLimitExceededException":
            self = .versionsLimitExceededException(message: message)
        case "RegistrationCodeValidationException":
            self = .registrationCodeValidationException(message: message)
        default:
            return nil
        }
    }
}