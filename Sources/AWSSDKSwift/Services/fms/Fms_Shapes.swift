// THIS FILE IS AUTOMATICALLY GENERATED by https://github.com/noppoMan/aws-sdk-swift/blob/master/Sources/CodeGenerator/main.swift. DO NOT EDIT.

import Foundation
import AWSSDKSwiftCore

extension Fms {

    public struct DisassociateAdminAccountRequest: AWSShape {

    }

    public struct GetNotificationChannelResponse: AWSShape {
        public static var _members: [AWSShapeMember] = [
            AWSShapeMember(label: "SnsTopicArn", required: false, type: .string), 
            AWSShapeMember(label: "SnsRoleName", required: false, type: .string)
        ]
        /// The SNS topic that records AWS Firewall Manager activity. 
        public let snsTopicArn: String?
        /// The IAM role that is used by AWS Firewall Manager to record activity to SNS.
        public let snsRoleName: String?

        public init(snsTopicArn: String? = nil, snsRoleName: String? = nil) {
            self.snsTopicArn = snsTopicArn
            self.snsRoleName = snsRoleName
        }

        private enum CodingKeys: String, CodingKey {
            case snsTopicArn = "SnsTopicArn"
            case snsRoleName = "SnsRoleName"
        }
    }

    public struct GetPolicyRequest: AWSShape {
        public static var _members: [AWSShapeMember] = [
            AWSShapeMember(label: "PolicyId", required: true, type: .string)
        ]
        /// The ID of the AWS Firewall Manager policy that you want the details for.
        public let policyId: String

        public init(policyId: String) {
            self.policyId = policyId
        }

        private enum CodingKeys: String, CodingKey {
            case policyId = "PolicyId"
        }
    }

    public struct Policy: AWSShape {
        public static var _members: [AWSShapeMember] = [
            AWSShapeMember(label: "PolicyUpdateToken", required: false, type: .string), 
            AWSShapeMember(label: "PolicyId", required: false, type: .string), 
            AWSShapeMember(label: "ExcludeResourceTags", required: true, type: .boolean), 
            AWSShapeMember(label: "ResourceType", required: true, type: .string), 
            AWSShapeMember(label: "ResourceTags", required: false, type: .list), 
            AWSShapeMember(label: "RemediationEnabled", required: true, type: .boolean), 
            AWSShapeMember(label: "SecurityServicePolicyData", required: true, type: .structure), 
            AWSShapeMember(label: "PolicyName", required: true, type: .string)
        ]
        /// A unique identifier for each update to the policy. When issuing a PutPolicy request, the PolicyUpdateToken in the request must match the PolicyUpdateToken of the current policy version. To get the PolicyUpdateToken of the current policy version, use a GetPolicy request.
        public let policyUpdateToken: String?
        /// The ID of the AWS Firewall Manager policy.
        public let policyId: String?
        /// If set to True, resources with the tags that are specified in the ResourceTag array are not protected by the policy. If set to False, and the ResourceTag array is not null, only resources with the specified tags are associated with the policy.
        public let excludeResourceTags: Bool
        /// The type of resource to protect with the policy, either an Application Load Balancer or a CloudFront distribution. This is in the format shown in AWS Resource Types Reference. Valid values are AWS::ElasticLoadBalancingV2::LoadBalancer or AWS::CloudFront::Distribution.
        public let resourceType: String
        /// An array of ResourceTag objects.
        public let resourceTags: [ResourceTag]?
        /// Indicates if the policy should be automatically applied to new resources.
        public let remediationEnabled: Bool
        /// Details about the security service that is being used to protect the resources.
        public let securityServicePolicyData: SecurityServicePolicyData
        /// The friendly name of the AWS Firewall Manager policy.
        public let policyName: String

        public init(policyUpdateToken: String? = nil, policyId: String? = nil, excludeResourceTags: Bool, resourceType: String, resourceTags: [ResourceTag]? = nil, remediationEnabled: Bool, securityServicePolicyData: SecurityServicePolicyData, policyName: String) {
            self.policyUpdateToken = policyUpdateToken
            self.policyId = policyId
            self.excludeResourceTags = excludeResourceTags
            self.resourceType = resourceType
            self.resourceTags = resourceTags
            self.remediationEnabled = remediationEnabled
            self.securityServicePolicyData = securityServicePolicyData
            self.policyName = policyName
        }

        private enum CodingKeys: String, CodingKey {
            case policyUpdateToken = "PolicyUpdateToken"
            case policyId = "PolicyId"
            case excludeResourceTags = "ExcludeResourceTags"
            case resourceType = "ResourceType"
            case resourceTags = "ResourceTags"
            case remediationEnabled = "RemediationEnabled"
            case securityServicePolicyData = "SecurityServicePolicyData"
            case policyName = "PolicyName"
        }
    }

    public struct GetPolicyResponse: AWSShape {
        public static var _members: [AWSShapeMember] = [
            AWSShapeMember(label: "PolicyArn", required: false, type: .string), 
            AWSShapeMember(label: "Policy", required: false, type: .structure)
        ]
        /// The Amazon Resource Name (ARN) of the specified policy.
        public let policyArn: String?
        /// Information about the specified AWS Firewall Manager policy.
        public let policy: Policy?

        public init(policyArn: String? = nil, policy: Policy? = nil) {
            self.policyArn = policyArn
            self.policy = policy
        }

        private enum CodingKeys: String, CodingKey {
            case policyArn = "PolicyArn"
            case policy = "Policy"
        }
    }

    public struct ListPoliciesResponse: AWSShape {
        public static var _members: [AWSShapeMember] = [
            AWSShapeMember(label: "PolicyList", required: false, type: .list), 
            AWSShapeMember(label: "NextToken", required: false, type: .string)
        ]
        /// An array of PolicySummary objects.
        public let policyList: [PolicySummary]?
        /// If you have more PolicySummary objects than the number that you specified for MaxResults in the request, the response includes a NextToken value. To list more PolicySummary objects, submit another ListPolicies request, and specify the NextToken value from the response in the NextToken value in the next request.
        public let nextToken: String?

        public init(policyList: [PolicySummary]? = nil, nextToken: String? = nil) {
            self.policyList = policyList
            self.nextToken = nextToken
        }

        private enum CodingKeys: String, CodingKey {
            case policyList = "PolicyList"
            case nextToken = "NextToken"
        }
    }

    public struct SecurityServicePolicyData: AWSShape {
        public static var _members: [AWSShapeMember] = [
            AWSShapeMember(label: "Type", required: true, type: .enum), 
            AWSShapeMember(label: "ManagedServiceData", required: false, type: .string)
        ]
        /// The service that the policy is using to protect the resources. This value is WAF.
        public let `type`: SecurityServiceType
        /// Details about the service. This contains WAF data in JSON format, as shown in the following example:  ManagedServiceData": "{\"type\": \"WAF\", \"ruleGroups\": [{\"id\": \"12345678-1bcd-9012-efga-0987654321ab\", \"overrideAction\" : {\"type\": \"COUNT\"}}], \"defaultAction\": {\"type\": \"BLOCK\"}} 
        public let managedServiceData: String?

        public init(type: SecurityServiceType, managedServiceData: String? = nil) {
            self.`type` = `type`
            self.managedServiceData = managedServiceData
        }

        private enum CodingKeys: String, CodingKey {
            case `type` = "Type"
            case managedServiceData = "ManagedServiceData"
        }
    }

    public struct DeletePolicyRequest: AWSShape {
        public static var _members: [AWSShapeMember] = [
            AWSShapeMember(label: "PolicyId", required: true, type: .string)
        ]
        /// The ID of the policy that you want to delete. PolicyId is returned by PutPolicy and by ListPolicies.
        public let policyId: String

        public init(policyId: String) {
            self.policyId = policyId
        }

        private enum CodingKeys: String, CodingKey {
            case policyId = "PolicyId"
        }
    }

    public struct PolicyComplianceDetail: AWSShape {
        public static var _members: [AWSShapeMember] = [
            AWSShapeMember(label: "PolicyOwner", required: false, type: .string), 
            AWSShapeMember(label: "PolicyId", required: false, type: .string), 
            AWSShapeMember(label: "ExpiredAt", required: false, type: .timestamp), 
            AWSShapeMember(label: "Violators", required: false, type: .list), 
            AWSShapeMember(label: "MemberAccount", required: false, type: .string), 
            AWSShapeMember(label: "EvaluationLimitExceeded", required: false, type: .boolean)
        ]
        /// The AWS account that created the AWS Firewall Manager policy.
        public let policyOwner: String?
        /// The ID of the AWS Firewall Manager policy.
        public let policyId: String?
        /// A time stamp that indicates when the returned information should be considered out-of-date.
        public let expiredAt: TimeStamp?
        /// An array of resources that are not protected by the policy.
        public let violators: [ComplianceViolator]?
        /// The AWS account ID.
        public let memberAccount: String?
        /// Indicates if over 100 resources are non-compliant with the AWS Firewall Manager policy.
        public let evaluationLimitExceeded: Bool?

        public init(policyOwner: String? = nil, policyId: String? = nil, expiredAt: TimeStamp? = nil, violators: [ComplianceViolator]? = nil, memberAccount: String? = nil, evaluationLimitExceeded: Bool? = nil) {
            self.policyOwner = policyOwner
            self.policyId = policyId
            self.expiredAt = expiredAt
            self.violators = violators
            self.memberAccount = memberAccount
            self.evaluationLimitExceeded = evaluationLimitExceeded
        }

        private enum CodingKeys: String, CodingKey {
            case policyOwner = "PolicyOwner"
            case policyId = "PolicyId"
            case expiredAt = "ExpiredAt"
            case violators = "Violators"
            case memberAccount = "MemberAccount"
            case evaluationLimitExceeded = "EvaluationLimitExceeded"
        }
    }

    public struct ListPoliciesRequest: AWSShape {
        public static var _members: [AWSShapeMember] = [
            AWSShapeMember(label: "NextToken", required: false, type: .string), 
            AWSShapeMember(label: "MaxResults", required: false, type: .integer)
        ]
        /// If you specify a value for MaxResults and you have more PolicySummary objects than the number that you specify for MaxResults, AWS Firewall Manager returns a NextToken value in the response that allows you to list another group of PolicySummary objects. For the second and subsequent ListPolicies requests, specify the value of NextToken from the previous response to get information about another batch of PolicySummary objects.
        public let nextToken: String?
        /// Specifies the number of PolicySummary objects that you want AWS Firewall Manager to return for this request. If you have more PolicySummary objects than the number that you specify for MaxResults, the response includes a NextToken value that you can use to get another batch of PolicySummary objects.
        public let maxResults: Int32?

        public init(nextToken: String? = nil, maxResults: Int32? = nil) {
            self.nextToken = nextToken
            self.maxResults = maxResults
        }

        private enum CodingKeys: String, CodingKey {
            case nextToken = "NextToken"
            case maxResults = "MaxResults"
        }
    }

    public struct AssociateAdminAccountRequest: AWSShape {
        public static var _members: [AWSShapeMember] = [
            AWSShapeMember(label: "AdminAccount", required: true, type: .string)
        ]
        /// The AWS account ID to associate with AWS Firewall Manager as the AWS Firewall Manager administrator account. This can be an AWS Organizations master account or a member account. For more information about AWS Organizations and master accounts, see Managing the AWS Accounts in Your Organization.
        public let adminAccount: String

        public init(adminAccount: String) {
            self.adminAccount = adminAccount
        }

        private enum CodingKeys: String, CodingKey {
            case adminAccount = "AdminAccount"
        }
    }

    public struct GetAdminAccountRequest: AWSShape {

    }

    public struct GetComplianceDetailResponse: AWSShape {
        public static var _members: [AWSShapeMember] = [
            AWSShapeMember(label: "PolicyComplianceDetail", required: false, type: .structure)
        ]
        /// Information about the resources and the policy that you specified in the GetComplianceDetail request.
        public let policyComplianceDetail: PolicyComplianceDetail?

        public init(policyComplianceDetail: PolicyComplianceDetail? = nil) {
            self.policyComplianceDetail = policyComplianceDetail
        }

        private enum CodingKeys: String, CodingKey {
            case policyComplianceDetail = "PolicyComplianceDetail"
        }
    }

    public struct ListComplianceStatusRequest: AWSShape {
        public static var _members: [AWSShapeMember] = [
            AWSShapeMember(label: "PolicyId", required: true, type: .string), 
            AWSShapeMember(label: "NextToken", required: false, type: .string), 
            AWSShapeMember(label: "MaxResults", required: false, type: .integer)
        ]
        /// The ID of the AWS Firewall Manager policy that you want the details for.
        public let policyId: String
        /// If you specify a value for MaxResults and you have more PolicyComplianceStatus objects than the number that you specify for MaxResults, AWS Firewall Manager returns a NextToken value in the response that allows you to list another group of PolicyComplianceStatus objects. For the second and subsequent ListComplianceStatus requests, specify the value of NextToken from the previous response to get information about another batch of PolicyComplianceStatus objects.
        public let nextToken: String?
        /// Specifies the number of PolicyComplianceStatus objects that you want AWS Firewall Manager to return for this request. If you have more PolicyComplianceStatus objects than the number that you specify for MaxResults, the response includes a NextToken value that you can use to get another batch of PolicyComplianceStatus objects.
        public let maxResults: Int32?

        public init(policyId: String, nextToken: String? = nil, maxResults: Int32? = nil) {
            self.policyId = policyId
            self.nextToken = nextToken
            self.maxResults = maxResults
        }

        private enum CodingKeys: String, CodingKey {
            case policyId = "PolicyId"
            case nextToken = "NextToken"
            case maxResults = "MaxResults"
        }
    }

    public struct PutNotificationChannelRequest: AWSShape {
        public static var _members: [AWSShapeMember] = [
            AWSShapeMember(label: "SnsTopicArn", required: true, type: .string), 
            AWSShapeMember(label: "SnsRoleName", required: true, type: .string)
        ]
        /// The Amazon Resource Name (ARN) of the SNS topic that collects notifications from AWS Firewall Manager.
        public let snsTopicArn: String
        /// The Amazon Resource Name (ARN) of the IAM role that allows Amazon SNS to record AWS Firewall Manager activity. 
        public let snsRoleName: String

        public init(snsTopicArn: String, snsRoleName: String) {
            self.snsTopicArn = snsTopicArn
            self.snsRoleName = snsRoleName
        }

        private enum CodingKeys: String, CodingKey {
            case snsTopicArn = "SnsTopicArn"
            case snsRoleName = "SnsRoleName"
        }
    }

    public struct PutPolicyRequest: AWSShape {
        public static var _members: [AWSShapeMember] = [
            AWSShapeMember(label: "Policy", required: true, type: .structure)
        ]
        /// The details of the AWS Firewall Manager policy to be created.
        public let policy: Policy

        public init(policy: Policy) {
            self.policy = policy
        }

        private enum CodingKeys: String, CodingKey {
            case policy = "Policy"
        }
    }

    public struct ComplianceViolator: AWSShape {
        public static var _members: [AWSShapeMember] = [
            AWSShapeMember(label: "ResourceId", required: false, type: .string), 
            AWSShapeMember(label: "ViolationReason", required: false, type: .enum), 
            AWSShapeMember(label: "ResourceType", required: false, type: .string)
        ]
        /// The resource ID.
        public let resourceId: String?
        /// The reason that the resource is not protected by the policy.
        public let violationReason: ViolationReason?
        /// The resource type. This is in the format shown in AWS Resource Types Reference. Valid values are AWS::ElasticLoadBalancingV2::LoadBalancer or AWS::CloudFront::Distribution.
        public let resourceType: String?

        public init(resourceId: String? = nil, violationReason: ViolationReason? = nil, resourceType: String? = nil) {
            self.resourceId = resourceId
            self.violationReason = violationReason
            self.resourceType = resourceType
        }

        private enum CodingKeys: String, CodingKey {
            case resourceId = "ResourceId"
            case violationReason = "ViolationReason"
            case resourceType = "ResourceType"
        }
    }

    public struct GetNotificationChannelRequest: AWSShape {

    }

    public struct PolicyComplianceStatus: AWSShape {
        public static var _members: [AWSShapeMember] = [
            AWSShapeMember(label: "PolicyName", required: false, type: .string), 
            AWSShapeMember(label: "PolicyId", required: false, type: .string), 
            AWSShapeMember(label: "LastUpdated", required: false, type: .timestamp), 
            AWSShapeMember(label: "EvaluationResults", required: false, type: .list), 
            AWSShapeMember(label: "MemberAccount", required: false, type: .string), 
            AWSShapeMember(label: "PolicyOwner", required: false, type: .string)
        ]
        /// The friendly name of the AWS Firewall Manager policy.
        public let policyName: String?
        /// The ID of the AWS Firewall Manager policy.
        public let policyId: String?
        /// Time stamp of the last update to the EvaluationResult objects.
        public let lastUpdated: TimeStamp?
        /// An array of EvaluationResult objects.
        public let evaluationResults: [EvaluationResult]?
        /// The member account ID.
        public let memberAccount: String?
        /// The AWS account that created the AWS Firewall Manager policy.
        public let policyOwner: String?

        public init(policyName: String? = nil, policyId: String? = nil, lastUpdated: TimeStamp? = nil, evaluationResults: [EvaluationResult]? = nil, memberAccount: String? = nil, policyOwner: String? = nil) {
            self.policyName = policyName
            self.policyId = policyId
            self.lastUpdated = lastUpdated
            self.evaluationResults = evaluationResults
            self.memberAccount = memberAccount
            self.policyOwner = policyOwner
        }

        private enum CodingKeys: String, CodingKey {
            case policyName = "PolicyName"
            case policyId = "PolicyId"
            case lastUpdated = "LastUpdated"
            case evaluationResults = "EvaluationResults"
            case memberAccount = "MemberAccount"
            case policyOwner = "PolicyOwner"
        }
    }

    public struct PolicySummary: AWSShape {
        public static var _members: [AWSShapeMember] = [
            AWSShapeMember(label: "PolicyArn", required: false, type: .string), 
            AWSShapeMember(label: "PolicyId", required: false, type: .string), 
            AWSShapeMember(label: "SecurityServiceType", required: false, type: .enum), 
            AWSShapeMember(label: "RemediationEnabled", required: false, type: .boolean), 
            AWSShapeMember(label: "ResourceType", required: false, type: .string), 
            AWSShapeMember(label: "PolicyName", required: false, type: .string)
        ]
        /// The Amazon Resource Name (ARN) of the specified policy.
        public let policyArn: String?
        /// The ID of the specified policy.
        public let policyId: String?
        /// The service that the policy is using to protect the resources. This value is WAF.
        public let securityServiceType: SecurityServiceType?
        /// Indicates if the policy should be automatically applied to new resources.
        public let remediationEnabled: Bool?
        /// The type of resource to protect with the policy, either an Application Load Balancer or a CloudFront distribution. This is in the format shown in AWS Resource Types Reference. Valid values are AWS::ElasticLoadBalancingV2::LoadBalancer or AWS::CloudFront::Distribution.
        public let resourceType: String?
        /// The friendly name of the specified policy.
        public let policyName: String?

        public init(policyArn: String? = nil, policyId: String? = nil, securityServiceType: SecurityServiceType? = nil, remediationEnabled: Bool? = nil, resourceType: String? = nil, policyName: String? = nil) {
            self.policyArn = policyArn
            self.policyId = policyId
            self.securityServiceType = securityServiceType
            self.remediationEnabled = remediationEnabled
            self.resourceType = resourceType
            self.policyName = policyName
        }

        private enum CodingKeys: String, CodingKey {
            case policyArn = "PolicyArn"
            case policyId = "PolicyId"
            case securityServiceType = "SecurityServiceType"
            case remediationEnabled = "RemediationEnabled"
            case resourceType = "ResourceType"
            case policyName = "PolicyName"
        }
    }

    public enum SecurityServiceType: String, CustomStringConvertible, Codable {
        case waf = "WAF"
        public var description: String { return self.rawValue }
    }

    public struct DeleteNotificationChannelRequest: AWSShape {

    }

    public struct EvaluationResult: AWSShape {
        public static var _members: [AWSShapeMember] = [
            AWSShapeMember(label: "ViolatorCount", required: false, type: .long), 
            AWSShapeMember(label: "EvaluationLimitExceeded", required: false, type: .boolean), 
            AWSShapeMember(label: "ComplianceStatus", required: false, type: .enum)
        ]
        /// Number of resources that are non-compliant with the specified policy. A resource is considered non-compliant if it is not associated with the specified policy.
        public let violatorCount: Int64?
        /// Indicates that over 100 resources are non-compliant with the AWS Firewall Manager policy.
        public let evaluationLimitExceeded: Bool?
        /// Describes an AWS account's compliance with the AWS Firewall Manager policy.
        public let complianceStatus: PolicyComplianceStatusType?

        public init(violatorCount: Int64? = nil, evaluationLimitExceeded: Bool? = nil, complianceStatus: PolicyComplianceStatusType? = nil) {
            self.violatorCount = violatorCount
            self.evaluationLimitExceeded = evaluationLimitExceeded
            self.complianceStatus = complianceStatus
        }

        private enum CodingKeys: String, CodingKey {
            case violatorCount = "ViolatorCount"
            case evaluationLimitExceeded = "EvaluationLimitExceeded"
            case complianceStatus = "ComplianceStatus"
        }
    }

    public enum ViolationReason: String, CustomStringConvertible, Codable {
        case webAclMissingRuleGroup = "WEB_ACL_MISSING_RULE_GROUP"
        case resourceMissingWebAcl = "RESOURCE_MISSING_WEB_ACL"
        case resourceIncorrectWebAcl = "RESOURCE_INCORRECT_WEB_ACL"
        public var description: String { return self.rawValue }
    }

    public struct ListComplianceStatusResponse: AWSShape {
        public static var _members: [AWSShapeMember] = [
            AWSShapeMember(label: "NextToken", required: false, type: .string), 
            AWSShapeMember(label: "PolicyComplianceStatusList", required: false, type: .list)
        ]
        /// If you have more PolicyComplianceStatus objects than the number that you specified for MaxResults in the request, the response includes a NextToken value. To list more PolicyComplianceStatus objects, submit another ListComplianceStatus request, and specify the NextToken value from the response in the NextToken value in the next request.
        public let nextToken: String?
        /// An array of PolicyComplianceStatus objects.
        public let policyComplianceStatusList: [PolicyComplianceStatus]?

        public init(nextToken: String? = nil, policyComplianceStatusList: [PolicyComplianceStatus]? = nil) {
            self.nextToken = nextToken
            self.policyComplianceStatusList = policyComplianceStatusList
        }

        private enum CodingKeys: String, CodingKey {
            case nextToken = "NextToken"
            case policyComplianceStatusList = "PolicyComplianceStatusList"
        }
    }

    public struct GetAdminAccountResponse: AWSShape {
        public static var _members: [AWSShapeMember] = [
            AWSShapeMember(label: "AdminAccount", required: false, type: .string)
        ]
        /// The AWS account that is set as the AWS Firewall Manager administrator.
        public let adminAccount: String?

        public init(adminAccount: String? = nil) {
            self.adminAccount = adminAccount
        }

        private enum CodingKeys: String, CodingKey {
            case adminAccount = "AdminAccount"
        }
    }

    public struct PutPolicyResponse: AWSShape {
        public static var _members: [AWSShapeMember] = [
            AWSShapeMember(label: "PolicyArn", required: false, type: .string), 
            AWSShapeMember(label: "Policy", required: false, type: .structure)
        ]
        /// The Amazon Resource Name (ARN) of the policy that was created.
        public let policyArn: String?
        /// The details of the AWS Firewall Manager policy that was created.
        public let policy: Policy?

        public init(policyArn: String? = nil, policy: Policy? = nil) {
            self.policyArn = policyArn
            self.policy = policy
        }

        private enum CodingKeys: String, CodingKey {
            case policyArn = "PolicyArn"
            case policy = "Policy"
        }
    }

    public struct ResourceTag: AWSShape {
        public static var _members: [AWSShapeMember] = [
            AWSShapeMember(label: "Value", required: false, type: .string), 
            AWSShapeMember(label: "Key", required: true, type: .string)
        ]
        /// The resource tag value.
        public let value: String?
        /// The resource tag key.
        public let key: String

        public init(value: String? = nil, key: String) {
            self.value = value
            self.key = key
        }

        private enum CodingKeys: String, CodingKey {
            case value = "Value"
            case key = "Key"
        }
    }

    public struct GetComplianceDetailRequest: AWSShape {
        public static var _members: [AWSShapeMember] = [
            AWSShapeMember(label: "MemberAccount", required: true, type: .string), 
            AWSShapeMember(label: "PolicyId", required: true, type: .string)
        ]
        /// The AWS account that owns the resources that you want to get the details for.
        public let memberAccount: String
        /// The ID of the policy that you want to get the details for. PolicyId is returned by PutPolicy and by ListPolicies.
        public let policyId: String

        public init(memberAccount: String, policyId: String) {
            self.memberAccount = memberAccount
            self.policyId = policyId
        }

        private enum CodingKeys: String, CodingKey {
            case memberAccount = "MemberAccount"
            case policyId = "PolicyId"
        }
    }

    public enum PolicyComplianceStatusType: String, CustomStringConvertible, Codable {
        case compliant = "COMPLIANT"
        case nonCompliant = "NON_COMPLIANT"
        public var description: String { return self.rawValue }
    }

}