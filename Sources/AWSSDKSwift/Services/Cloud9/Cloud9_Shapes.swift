// THIS FILE IS AUTOMATICALLY GENERATED by https://github.com/noppoMan/aws-sdk-swift/blob/master/Sources/CodeGenerator/main.swift. DO NOT EDIT.

import Foundation
import AWSSDKSwiftCore

extension Cloud9 {

    public struct DescribeEnvironmentsRequest: AWSShape {
        public static var _members: [AWSShapeMember] = [
            AWSShapeMember(label: "environmentIds", required: true, type: .list)
        ]
        /// The IDs of individual environments to get information about.
        public let environmentIds: [String]

        public init(environmentIds: [String]) {
            self.environmentIds = environmentIds
        }

        private enum CodingKeys: String, CodingKey {
            case environmentIds = "environmentIds"
        }
    }

    public struct UpdateEnvironmentRequest: AWSShape {
        public static var _members: [AWSShapeMember] = [
            AWSShapeMember(label: "description", required: false, type: .string), 
            AWSShapeMember(label: "name", required: false, type: .string), 
            AWSShapeMember(label: "environmentId", required: true, type: .string)
        ]
        /// Any new or replacement description for the environment.
        public let description: String?
        /// A replacement name for the environment.
        public let name: String?
        /// The ID of the environment to change settings.
        public let environmentId: String

        public init(description: String? = nil, name: String? = nil, environmentId: String) {
            self.description = description
            self.name = name
            self.environmentId = environmentId
        }

        private enum CodingKeys: String, CodingKey {
            case description = "description"
            case name = "name"
            case environmentId = "environmentId"
        }
    }

    public struct DescribeEnvironmentMembershipsResult: AWSShape {
        public static var _members: [AWSShapeMember] = [
            AWSShapeMember(label: "nextToken", required: false, type: .string), 
            AWSShapeMember(label: "memberships", required: false, type: .list)
        ]
        /// If there are more than 25 items in the list, only the first 25 items are returned, along with a unique string called a next token. To get the next batch of items in the list, call this operation again, adding the next token to the call.
        public let nextToken: String?
        /// Information about the environment members for the environment.
        public let memberships: [EnvironmentMember]?

        public init(nextToken: String? = nil, memberships: [EnvironmentMember]? = nil) {
            self.nextToken = nextToken
            self.memberships = memberships
        }

        private enum CodingKeys: String, CodingKey {
            case nextToken = "nextToken"
            case memberships = "memberships"
        }
    }

    public enum Permissions: String, CustomStringConvertible, Codable {
        case owner = "owner"
        case readWrite = "read-write"
        case readOnly = "read-only"
        public var description: String { return self.rawValue }
    }

    public struct DescribeEnvironmentStatusResult: AWSShape {
        public static var _members: [AWSShapeMember] = [
            AWSShapeMember(label: "status", required: false, type: .enum), 
            AWSShapeMember(label: "message", required: false, type: .string)
        ]
        /// The status of the environment. Available values include:    connecting: The environment is connecting.    creating: The environment is being created.    deleting: The environment is being deleted.    error: The environment is in an error state.    ready: The environment is ready.    stopped: The environment is stopped.    stopping: The environment is stopping.  
        public let status: EnvironmentStatus?
        /// Any informational message about the status of the environment.
        public let message: String?

        public init(status: EnvironmentStatus? = nil, message: String? = nil) {
            self.status = status
            self.message = message
        }

        private enum CodingKeys: String, CodingKey {
            case status = "status"
            case message = "message"
        }
    }

    public enum EnvironmentStatus: String, CustomStringConvertible, Codable {
        case error = "error"
        case creating = "creating"
        case connecting = "connecting"
        case ready = "ready"
        case stopping = "stopping"
        case stopped = "stopped"
        case deleting = "deleting"
        public var description: String { return self.rawValue }
    }

    public struct DescribeEnvironmentsResult: AWSShape {
        public static var _members: [AWSShapeMember] = [
            AWSShapeMember(label: "environments", required: false, type: .list)
        ]
        /// Information about the environments that are returned.
        public let environments: [Environment]?

        public init(environments: [Environment]? = nil) {
            self.environments = environments
        }

        private enum CodingKeys: String, CodingKey {
            case environments = "environments"
        }
    }

    public struct ListEnvironmentsResult: AWSShape {
        public static var _members: [AWSShapeMember] = [
            AWSShapeMember(label: "nextToken", required: false, type: .string), 
            AWSShapeMember(label: "environmentIds", required: false, type: .list)
        ]
        /// If there are more than 25 items in the list, only the first 25 items are returned, along with a unique string called a next token. To get the next batch of items in the list, call this operation again, adding the next token to the call.
        public let nextToken: String?
        /// The list of environment identifiers.
        public let environmentIds: [String]?

        public init(nextToken: String? = nil, environmentIds: [String]? = nil) {
            self.nextToken = nextToken
            self.environmentIds = environmentIds
        }

        private enum CodingKeys: String, CodingKey {
            case nextToken = "nextToken"
            case environmentIds = "environmentIds"
        }
    }

    public struct DescribeEnvironmentMembershipsRequest: AWSShape {
        public static var _members: [AWSShapeMember] = [
            AWSShapeMember(label: "nextToken", required: false, type: .string), 
            AWSShapeMember(label: "maxResults", required: false, type: .integer), 
            AWSShapeMember(label: "userArn", required: false, type: .string), 
            AWSShapeMember(label: "environmentId", required: false, type: .string), 
            AWSShapeMember(label: "permissions", required: false, type: .list)
        ]
        /// During a previous call, if there are more than 25 items in the list, only the first 25 items are returned, along with a unique string called a next token. To get the next batch of items in the list, call this operation again, adding the next token to the call. To get all of the items in the list, keep calling this operation with each subsequent next token that is returned, until no more next tokens are returned.
        public let nextToken: String?
        /// The maximum number of environment members to get information about.
        public let maxResults: Int32?
        /// The Amazon Resource Name (ARN) of an individual environment member to get information about. If no value is specified, information about all environment members are returned.
        public let userArn: String?
        /// The ID of the environment to get environment member information about.
        public let environmentId: String?
        /// The type of environment member permissions to get information about. Available values include:    owner: Owns the environment.    read-only: Has read-only access to the environment.    read-write: Has read-write access to the environment.   If no value is specified, information about all environment members are returned.
        public let permissions: [Permissions]?

        public init(nextToken: String? = nil, maxResults: Int32? = nil, userArn: String? = nil, environmentId: String? = nil, permissions: [Permissions]? = nil) {
            self.nextToken = nextToken
            self.maxResults = maxResults
            self.userArn = userArn
            self.environmentId = environmentId
            self.permissions = permissions
        }

        private enum CodingKeys: String, CodingKey {
            case nextToken = "nextToken"
            case maxResults = "maxResults"
            case userArn = "userArn"
            case environmentId = "environmentId"
            case permissions = "permissions"
        }
    }

    public struct Environment: AWSShape {
        public static var _members: [AWSShapeMember] = [
            AWSShapeMember(label: "description", required: false, type: .string), 
            AWSShapeMember(label: "name", required: false, type: .string), 
            AWSShapeMember(label: "ownerArn", required: false, type: .string), 
            AWSShapeMember(label: "id", required: false, type: .string), 
            AWSShapeMember(label: "type", required: false, type: .enum), 
            AWSShapeMember(label: "arn", required: false, type: .string)
        ]
        /// The description for the environment.
        public let description: String?
        /// The name of the environment.
        public let name: String?
        /// The Amazon Resource Name (ARN) of the environment owner.
        public let ownerArn: String?
        /// The ID of the environment.
        public let id: String?
        /// The type of environment. Valid values include the following:    ec2: An Amazon Elastic Compute Cloud (Amazon EC2) instance connects to the environment.    ssh: Your own server connects to the environment.  
        public let `type`: EnvironmentType?
        /// The Amazon Resource Name (ARN) of the environment.
        public let arn: String?

        public init(description: String? = nil, name: String? = nil, ownerArn: String? = nil, id: String? = nil, type: EnvironmentType? = nil, arn: String? = nil) {
            self.description = description
            self.name = name
            self.ownerArn = ownerArn
            self.id = id
            self.`type` = `type`
            self.arn = arn
        }

        private enum CodingKeys: String, CodingKey {
            case description = "description"
            case name = "name"
            case ownerArn = "ownerArn"
            case id = "id"
            case `type` = "type"
            case arn = "arn"
        }
    }

    public struct UpdateEnvironmentResult: AWSShape {

    }

    public struct DeleteEnvironmentMembershipResult: AWSShape {

    }

    public struct CreateEnvironmentMembershipResult: AWSShape {
        public static var _members: [AWSShapeMember] = [
            AWSShapeMember(label: "membership", required: false, type: .structure)
        ]
        /// Information about the environment member that was added.
        public let membership: EnvironmentMember?

        public init(membership: EnvironmentMember? = nil) {
            self.membership = membership
        }

        private enum CodingKeys: String, CodingKey {
            case membership = "membership"
        }
    }

    public struct DeleteEnvironmentMembershipRequest: AWSShape {
        public static var _members: [AWSShapeMember] = [
            AWSShapeMember(label: "userArn", required: true, type: .string), 
            AWSShapeMember(label: "environmentId", required: true, type: .string)
        ]
        /// The Amazon Resource Name (ARN) of the environment member to delete from the environment.
        public let userArn: String
        /// The ID of the environment to delete the environment member from.
        public let environmentId: String

        public init(userArn: String, environmentId: String) {
            self.userArn = userArn
            self.environmentId = environmentId
        }

        private enum CodingKeys: String, CodingKey {
            case userArn = "userArn"
            case environmentId = "environmentId"
        }
    }

    public struct UpdateEnvironmentMembershipRequest: AWSShape {
        public static var _members: [AWSShapeMember] = [
            AWSShapeMember(label: "userArn", required: true, type: .string), 
            AWSShapeMember(label: "permissions", required: true, type: .enum), 
            AWSShapeMember(label: "environmentId", required: true, type: .string)
        ]
        /// The Amazon Resource Name (ARN) of the environment member whose settings you want to change.
        public let userArn: String
        /// The replacement type of environment member permissions you want to associate with this environment member. Available values include:    read-only: Has read-only access to the environment.    read-write: Has read-write access to the environment.  
        public let permissions: MemberPermissions
        /// The ID of the environment for the environment member whose settings you want to change.
        public let environmentId: String

        public init(userArn: String, permissions: MemberPermissions, environmentId: String) {
            self.userArn = userArn
            self.permissions = permissions
            self.environmentId = environmentId
        }

        private enum CodingKeys: String, CodingKey {
            case userArn = "userArn"
            case permissions = "permissions"
            case environmentId = "environmentId"
        }
    }

    public enum EnvironmentType: String, CustomStringConvertible, Codable {
        case ssh = "ssh"
        case ec2 = "ec2"
        public var description: String { return self.rawValue }
    }

    public struct UpdateEnvironmentMembershipResult: AWSShape {
        public static var _members: [AWSShapeMember] = [
            AWSShapeMember(label: "membership", required: false, type: .structure)
        ]
        /// Information about the environment member whose settings were changed.
        public let membership: EnvironmentMember?

        public init(membership: EnvironmentMember? = nil) {
            self.membership = membership
        }

        private enum CodingKeys: String, CodingKey {
            case membership = "membership"
        }
    }

    public struct ListEnvironmentsRequest: AWSShape {
        public static var _members: [AWSShapeMember] = [
            AWSShapeMember(label: "nextToken", required: false, type: .string), 
            AWSShapeMember(label: "maxResults", required: false, type: .integer)
        ]
        /// During a previous call, if there are more than 25 items in the list, only the first 25 items are returned, along with a unique string called a next token. To get the next batch of items in the list, call this operation again, adding the next token to the call. To get all of the items in the list, keep calling this operation with each subsequent next token that is returned, until no more next tokens are returned.
        public let nextToken: String?
        /// The maximum number of environments to get identifiers for.
        public let maxResults: Int32?

        public init(nextToken: String? = nil, maxResults: Int32? = nil) {
            self.nextToken = nextToken
            self.maxResults = maxResults
        }

        private enum CodingKeys: String, CodingKey {
            case nextToken = "nextToken"
            case maxResults = "maxResults"
        }
    }

    public struct CreateEnvironmentMembershipRequest: AWSShape {
        public static var _members: [AWSShapeMember] = [
            AWSShapeMember(label: "userArn", required: true, type: .string), 
            AWSShapeMember(label: "permissions", required: true, type: .enum), 
            AWSShapeMember(label: "environmentId", required: true, type: .string)
        ]
        /// The Amazon Resource Name (ARN) of the environment member you want to add.
        public let userArn: String
        /// The type of environment member permissions you want to associate with this environment member. Available values include:    read-only: Has read-only access to the environment.    read-write: Has read-write access to the environment.  
        public let permissions: MemberPermissions
        /// The ID of the environment that contains the environment member you want to add.
        public let environmentId: String

        public init(userArn: String, permissions: MemberPermissions, environmentId: String) {
            self.userArn = userArn
            self.permissions = permissions
            self.environmentId = environmentId
        }

        private enum CodingKeys: String, CodingKey {
            case userArn = "userArn"
            case permissions = "permissions"
            case environmentId = "environmentId"
        }
    }

    public enum MemberPermissions: String, CustomStringConvertible, Codable {
        case readWrite = "read-write"
        case readOnly = "read-only"
        public var description: String { return self.rawValue }
    }

    public struct EnvironmentMember: AWSShape {
        public static var _members: [AWSShapeMember] = [
            AWSShapeMember(label: "userId", required: false, type: .string), 
            AWSShapeMember(label: "environmentId", required: false, type: .string), 
            AWSShapeMember(label: "lastAccess", required: false, type: .timestamp), 
            AWSShapeMember(label: "userArn", required: false, type: .string), 
            AWSShapeMember(label: "permissions", required: false, type: .enum)
        ]
        /// The user ID in AWS Identity and Access Management (AWS IAM) of the environment member.
        public let userId: String?
        /// The ID of the environment for the environment member.
        public let environmentId: String?
        /// The time, expressed in epoch time format, when the environment member last opened the environment.
        public let lastAccess: TimeStamp?
        /// The Amazon Resource Name (ARN) of the environment member.
        public let userArn: String?
        /// The type of environment member permissions associated with this environment member. Available values include:    owner: Owns the environment.    read-only: Has read-only access to the environment.    read-write: Has read-write access to the environment.  
        public let permissions: Permissions?

        public init(userId: String? = nil, environmentId: String? = nil, lastAccess: TimeStamp? = nil, userArn: String? = nil, permissions: Permissions? = nil) {
            self.userId = userId
            self.environmentId = environmentId
            self.lastAccess = lastAccess
            self.userArn = userArn
            self.permissions = permissions
        }

        private enum CodingKeys: String, CodingKey {
            case userId = "userId"
            case environmentId = "environmentId"
            case lastAccess = "lastAccess"
            case userArn = "userArn"
            case permissions = "permissions"
        }
    }

    public struct DescribeEnvironmentStatusRequest: AWSShape {
        public static var _members: [AWSShapeMember] = [
            AWSShapeMember(label: "environmentId", required: true, type: .string)
        ]
        /// The ID of the environment to get status information about.
        public let environmentId: String

        public init(environmentId: String) {
            self.environmentId = environmentId
        }

        private enum CodingKeys: String, CodingKey {
            case environmentId = "environmentId"
        }
    }

    public struct DeleteEnvironmentRequest: AWSShape {
        public static var _members: [AWSShapeMember] = [
            AWSShapeMember(label: "environmentId", required: true, type: .string)
        ]
        /// The ID of the environment to delete.
        public let environmentId: String

        public init(environmentId: String) {
            self.environmentId = environmentId
        }

        private enum CodingKeys: String, CodingKey {
            case environmentId = "environmentId"
        }
    }

    public struct CreateEnvironmentEC2Result: AWSShape {
        public static var _members: [AWSShapeMember] = [
            AWSShapeMember(label: "environmentId", required: false, type: .string)
        ]
        /// The ID of the environment that was created.
        public let environmentId: String?

        public init(environmentId: String? = nil) {
            self.environmentId = environmentId
        }

        private enum CodingKeys: String, CodingKey {
            case environmentId = "environmentId"
        }
    }

    public struct DeleteEnvironmentResult: AWSShape {

    }

    public struct CreateEnvironmentEC2Request: AWSShape {
        public static var _members: [AWSShapeMember] = [
            AWSShapeMember(label: "name", required: true, type: .string), 
            AWSShapeMember(label: "instanceType", required: true, type: .string), 
            AWSShapeMember(label: "ownerArn", required: false, type: .string), 
            AWSShapeMember(label: "description", required: false, type: .string), 
            AWSShapeMember(label: "clientRequestToken", required: false, type: .string), 
            AWSShapeMember(label: "automaticStopTimeMinutes", required: false, type: .integer), 
            AWSShapeMember(label: "subnetId", required: false, type: .string)
        ]
        /// The name of the environment to create. This name is visible to other AWS IAM users in the same AWS account.
        public let name: String
        /// The type of instance to connect to the environment (for example, t2.micro).
        public let instanceType: String
        /// The Amazon Resource Name (ARN) of the environment owner. This ARN can be the ARN of any AWS IAM principal. If this value is not specified, the ARN defaults to this environment's creator.
        public let ownerArn: String?
        /// The description of the environment to create.
        public let description: String?
        /// A unique, case-sensitive string that helps AWS Cloud9 to ensure this operation completes no more than one time. For more information, see Client Tokens in the Amazon EC2 API Reference.
        public let clientRequestToken: String?
        /// The number of minutes until the running instance is shut down after the environment has last been used.
        public let automaticStopTimeMinutes: Int32?
        /// The ID of the subnet in Amazon VPC that AWS Cloud9 will use to communicate with the Amazon EC2 instance.
        public let subnetId: String?

        public init(name: String, instanceType: String, ownerArn: String? = nil, description: String? = nil, clientRequestToken: String? = nil, automaticStopTimeMinutes: Int32? = nil, subnetId: String? = nil) {
            self.name = name
            self.instanceType = instanceType
            self.ownerArn = ownerArn
            self.description = description
            self.clientRequestToken = clientRequestToken
            self.automaticStopTimeMinutes = automaticStopTimeMinutes
            self.subnetId = subnetId
        }

        private enum CodingKeys: String, CodingKey {
            case name = "name"
            case instanceType = "instanceType"
            case ownerArn = "ownerArn"
            case description = "description"
            case clientRequestToken = "clientRequestToken"
            case automaticStopTimeMinutes = "automaticStopTimeMinutes"
            case subnetId = "subnetId"
        }
    }

}