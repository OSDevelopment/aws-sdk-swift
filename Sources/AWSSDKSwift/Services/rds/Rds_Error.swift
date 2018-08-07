// THIS FILE IS AUTOMATICALLY GENERATED by https://github.com/noppoMan/aws-sdk-swift/blob/master/Sources/CodeGenerator/main.swift. DO NOT EDIT.

import AWSSDKSwiftCore

/// Error enum for Rds
public enum RdsError: AWSErrorType {
    case dBInstanceAlreadyExistsFault(message: String?)
    case insufficientDBInstanceCapacityFault(message: String?)
    case dBParameterGroupNotFoundFault(message: String?)
    case dBSecurityGroupNotFoundFault(message: String?)
    case instanceQuotaExceededFault(message: String?)
    case storageQuotaExceededFault(message: String?)
    case dBSubnetGroupNotFoundFault(message: String?)
    case dBSubnetGroupDoesNotCoverEnoughAZs(message: String?)
    case invalidDBClusterStateFault(message: String?)
    case invalidSubnet(message: String?)
    case invalidVPCNetworkStateFault(message: String?)
    case provisionedIopsNotAvailableInAZFault(message: String?)
    case optionGroupNotFoundFault(message: String?)
    case dBClusterNotFoundFault(message: String?)
    case storageTypeNotSupportedFault(message: String?)
    case authorizationNotFoundFault(message: String?)
    case kMSKeyNotAccessibleFault(message: String?)
    case domainNotFoundFault(message: String?)
    case dBSnapshotNotFoundFault(message: String?)
    case invalidDBSnapshotStateFault(message: String?)
    case invalidRestoreFault(message: String?)
    case dBInstanceNotFoundFault(message: String?)
    case invalidDBInstanceStateFault(message: String?)
    case dBClusterRoleNotFoundFault(message: String?)
    case invalidOptionGroupStateFault(message: String?)
    case subscriptionNotFoundFault(message: String?)
    case sourceNotFoundFault(message: String?)
    case dBParameterGroupQuotaExceededFault(message: String?)
    case dBParameterGroupAlreadyExistsFault(message: String?)
    case dBClusterRoleAlreadyExistsFault(message: String?)
    case dBClusterRoleQuotaExceededFault(message: String?)
    case reservedDBInstanceNotFoundFault(message: String?)
    case dBClusterSnapshotNotFoundFault(message: String?)
    case eventSubscriptionQuotaExceededFault(message: String?)
    case sNSInvalidTopicFault(message: String?)
    case sNSNoAuthorizationFault(message: String?)
    case sNSTopicArnNotFoundFault(message: String?)
    case subscriptionCategoryNotFoundFault(message: String?)
    case invalidDBParameterGroupStateFault(message: String?)
    case optionGroupAlreadyExistsFault(message: String?)
    case optionGroupQuotaExceededFault(message: String?)
    case dBLogFileNotFoundFault(message: String?)
    case dBClusterAlreadyExistsFault(message: String?)
    case dBClusterQuotaExceededFault(message: String?)
    case invalidDBSubnetGroupStateFault(message: String?)
    case invalidS3BucketFault(message: String?)
    case dBClusterParameterGroupNotFoundFault(message: String?)
    case insufficientStorageClusterCapacityFault(message: String?)
    case dBSubnetGroupAlreadyExistsFault(message: String?)
    case dBSubnetGroupQuotaExceededFault(message: String?)
    case dBSubnetQuotaExceededFault(message: String?)
    case invalidDBClusterSnapshotStateFault(message: String?)
    case dBSnapshotAlreadyExistsFault(message: String?)
    case snapshotQuotaExceededFault(message: String?)
    case invalidDBSecurityGroupStateFault(message: String?)
    case dBSubnetGroupNotAllowedFault(message: String?)
    case invalidDBSubnetGroupFault(message: String?)
    case dBUpgradeDependencyFailureFault(message: String?)
    case certificateNotFoundFault(message: String?)
    case resourceNotFoundFault(message: String?)
    case pointInTimeRestoreNotEnabledFault(message: String?)
    case insufficientDBClusterCapacityFault(message: String?)
    case reservedDBInstancesOfferingNotFoundFault(message: String?)
    case reservedDBInstanceAlreadyExistsFault(message: String?)
    case reservedDBInstanceQuotaExceededFault(message: String?)
    case authorizationAlreadyExistsFault(message: String?)
    case authorizationQuotaExceededFault(message: String?)
    case dBClusterSnapshotAlreadyExistsFault(message: String?)
    case dBClusterBacktrackNotFoundFault(message: String?)
    case subscriptionAlreadyExistFault(message: String?)
    case subnetAlreadyInUse(message: String?)
    case sharedSnapshotQuotaExceededFault(message: String?)
    case invalidEventSubscriptionStateFault(message: String?)
    case dBSecurityGroupAlreadyExistsFault(message: String?)
    case dBSecurityGroupQuotaExceededFault(message: String?)
    case dBSecurityGroupNotSupportedFault(message: String?)
    case invalidDBSubnetStateFault(message: String?)
}

extension RdsError {
    public init?(errorCode: String, message: String?){
        var errorCode = errorCode
        if let index = errorCode.index(of: "#") {
            errorCode = String(errorCode[errorCode.index(index, offsetBy: 1)...])
        }
        switch errorCode {
        case "DBInstanceAlreadyExistsFault":
            self = .dBInstanceAlreadyExistsFault(message: message)
        case "InsufficientDBInstanceCapacityFault":
            self = .insufficientDBInstanceCapacityFault(message: message)
        case "DBParameterGroupNotFoundFault":
            self = .dBParameterGroupNotFoundFault(message: message)
        case "DBSecurityGroupNotFoundFault":
            self = .dBSecurityGroupNotFoundFault(message: message)
        case "InstanceQuotaExceededFault":
            self = .instanceQuotaExceededFault(message: message)
        case "StorageQuotaExceededFault":
            self = .storageQuotaExceededFault(message: message)
        case "DBSubnetGroupNotFoundFault":
            self = .dBSubnetGroupNotFoundFault(message: message)
        case "DBSubnetGroupDoesNotCoverEnoughAZs":
            self = .dBSubnetGroupDoesNotCoverEnoughAZs(message: message)
        case "InvalidDBClusterStateFault":
            self = .invalidDBClusterStateFault(message: message)
        case "InvalidSubnet":
            self = .invalidSubnet(message: message)
        case "InvalidVPCNetworkStateFault":
            self = .invalidVPCNetworkStateFault(message: message)
        case "ProvisionedIopsNotAvailableInAZFault":
            self = .provisionedIopsNotAvailableInAZFault(message: message)
        case "OptionGroupNotFoundFault":
            self = .optionGroupNotFoundFault(message: message)
        case "DBClusterNotFoundFault":
            self = .dBClusterNotFoundFault(message: message)
        case "StorageTypeNotSupportedFault":
            self = .storageTypeNotSupportedFault(message: message)
        case "AuthorizationNotFoundFault":
            self = .authorizationNotFoundFault(message: message)
        case "KMSKeyNotAccessibleFault":
            self = .kMSKeyNotAccessibleFault(message: message)
        case "DomainNotFoundFault":
            self = .domainNotFoundFault(message: message)
        case "DBSnapshotNotFoundFault":
            self = .dBSnapshotNotFoundFault(message: message)
        case "InvalidDBSnapshotStateFault":
            self = .invalidDBSnapshotStateFault(message: message)
        case "InvalidRestoreFault":
            self = .invalidRestoreFault(message: message)
        case "DBInstanceNotFoundFault":
            self = .dBInstanceNotFoundFault(message: message)
        case "InvalidDBInstanceStateFault":
            self = .invalidDBInstanceStateFault(message: message)
        case "DBClusterRoleNotFoundFault":
            self = .dBClusterRoleNotFoundFault(message: message)
        case "InvalidOptionGroupStateFault":
            self = .invalidOptionGroupStateFault(message: message)
        case "SubscriptionNotFoundFault":
            self = .subscriptionNotFoundFault(message: message)
        case "SourceNotFoundFault":
            self = .sourceNotFoundFault(message: message)
        case "DBParameterGroupQuotaExceededFault":
            self = .dBParameterGroupQuotaExceededFault(message: message)
        case "DBParameterGroupAlreadyExistsFault":
            self = .dBParameterGroupAlreadyExistsFault(message: message)
        case "DBClusterRoleAlreadyExistsFault":
            self = .dBClusterRoleAlreadyExistsFault(message: message)
        case "DBClusterRoleQuotaExceededFault":
            self = .dBClusterRoleQuotaExceededFault(message: message)
        case "ReservedDBInstanceNotFoundFault":
            self = .reservedDBInstanceNotFoundFault(message: message)
        case "DBClusterSnapshotNotFoundFault":
            self = .dBClusterSnapshotNotFoundFault(message: message)
        case "EventSubscriptionQuotaExceededFault":
            self = .eventSubscriptionQuotaExceededFault(message: message)
        case "SNSInvalidTopicFault":
            self = .sNSInvalidTopicFault(message: message)
        case "SNSNoAuthorizationFault":
            self = .sNSNoAuthorizationFault(message: message)
        case "SNSTopicArnNotFoundFault":
            self = .sNSTopicArnNotFoundFault(message: message)
        case "SubscriptionCategoryNotFoundFault":
            self = .subscriptionCategoryNotFoundFault(message: message)
        case "InvalidDBParameterGroupStateFault":
            self = .invalidDBParameterGroupStateFault(message: message)
        case "OptionGroupAlreadyExistsFault":
            self = .optionGroupAlreadyExistsFault(message: message)
        case "OptionGroupQuotaExceededFault":
            self = .optionGroupQuotaExceededFault(message: message)
        case "DBLogFileNotFoundFault":
            self = .dBLogFileNotFoundFault(message: message)
        case "DBClusterAlreadyExistsFault":
            self = .dBClusterAlreadyExistsFault(message: message)
        case "DBClusterQuotaExceededFault":
            self = .dBClusterQuotaExceededFault(message: message)
        case "InvalidDBSubnetGroupStateFault":
            self = .invalidDBSubnetGroupStateFault(message: message)
        case "InvalidS3BucketFault":
            self = .invalidS3BucketFault(message: message)
        case "DBClusterParameterGroupNotFoundFault":
            self = .dBClusterParameterGroupNotFoundFault(message: message)
        case "InsufficientStorageClusterCapacityFault":
            self = .insufficientStorageClusterCapacityFault(message: message)
        case "DBSubnetGroupAlreadyExistsFault":
            self = .dBSubnetGroupAlreadyExistsFault(message: message)
        case "DBSubnetGroupQuotaExceededFault":
            self = .dBSubnetGroupQuotaExceededFault(message: message)
        case "DBSubnetQuotaExceededFault":
            self = .dBSubnetQuotaExceededFault(message: message)
        case "InvalidDBClusterSnapshotStateFault":
            self = .invalidDBClusterSnapshotStateFault(message: message)
        case "DBSnapshotAlreadyExistsFault":
            self = .dBSnapshotAlreadyExistsFault(message: message)
        case "SnapshotQuotaExceededFault":
            self = .snapshotQuotaExceededFault(message: message)
        case "InvalidDBSecurityGroupStateFault":
            self = .invalidDBSecurityGroupStateFault(message: message)
        case "DBSubnetGroupNotAllowedFault":
            self = .dBSubnetGroupNotAllowedFault(message: message)
        case "InvalidDBSubnetGroupFault":
            self = .invalidDBSubnetGroupFault(message: message)
        case "DBUpgradeDependencyFailureFault":
            self = .dBUpgradeDependencyFailureFault(message: message)
        case "CertificateNotFoundFault":
            self = .certificateNotFoundFault(message: message)
        case "ResourceNotFoundFault":
            self = .resourceNotFoundFault(message: message)
        case "PointInTimeRestoreNotEnabledFault":
            self = .pointInTimeRestoreNotEnabledFault(message: message)
        case "InsufficientDBClusterCapacityFault":
            self = .insufficientDBClusterCapacityFault(message: message)
        case "ReservedDBInstancesOfferingNotFoundFault":
            self = .reservedDBInstancesOfferingNotFoundFault(message: message)
        case "ReservedDBInstanceAlreadyExistsFault":
            self = .reservedDBInstanceAlreadyExistsFault(message: message)
        case "ReservedDBInstanceQuotaExceededFault":
            self = .reservedDBInstanceQuotaExceededFault(message: message)
        case "AuthorizationAlreadyExistsFault":
            self = .authorizationAlreadyExistsFault(message: message)
        case "AuthorizationQuotaExceededFault":
            self = .authorizationQuotaExceededFault(message: message)
        case "DBClusterSnapshotAlreadyExistsFault":
            self = .dBClusterSnapshotAlreadyExistsFault(message: message)
        case "DBClusterBacktrackNotFoundFault":
            self = .dBClusterBacktrackNotFoundFault(message: message)
        case "SubscriptionAlreadyExistFault":
            self = .subscriptionAlreadyExistFault(message: message)
        case "SubnetAlreadyInUse":
            self = .subnetAlreadyInUse(message: message)
        case "SharedSnapshotQuotaExceededFault":
            self = .sharedSnapshotQuotaExceededFault(message: message)
        case "InvalidEventSubscriptionStateFault":
            self = .invalidEventSubscriptionStateFault(message: message)
        case "DBSecurityGroupAlreadyExistsFault":
            self = .dBSecurityGroupAlreadyExistsFault(message: message)
        case "DBSecurityGroupQuotaExceededFault":
            self = .dBSecurityGroupQuotaExceededFault(message: message)
        case "DBSecurityGroupNotSupportedFault":
            self = .dBSecurityGroupNotSupportedFault(message: message)
        case "InvalidDBSubnetStateFault":
            self = .invalidDBSubnetStateFault(message: message)
        default:
            return nil
        }
    }
}