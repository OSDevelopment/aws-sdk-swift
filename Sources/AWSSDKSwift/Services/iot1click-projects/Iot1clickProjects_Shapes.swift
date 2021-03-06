// THIS FILE IS AUTOMATICALLY GENERATED by https://github.com/noppoMan/aws-sdk-swift/blob/master/Sources/CodeGenerator/main.swift. DO NOT EDIT.

import Foundation
import AWSSDKSwiftCore

extension Iot1clickProjects {

    public struct AssociateDeviceWithPlacementRequest: AWSShape {
        public static var _members: [AWSShapeMember] = [
            AWSShapeMember(label: "deviceId", required: true, type: .string), 
            AWSShapeMember(label: "deviceTemplateName", location: .uri(locationName: "deviceTemplateName"), required: true, type: .string), 
            AWSShapeMember(label: "projectName", location: .uri(locationName: "projectName"), required: true, type: .string), 
            AWSShapeMember(label: "placementName", location: .uri(locationName: "placementName"), required: true, type: .string)
        ]
        /// The ID of the physical device to be associated with the given placement in the project. Note that a mandatory 4 character prefix is required for all deviceId values.
        public let deviceId: String
        /// The device template name to associate with the device ID.
        public let deviceTemplateName: String
        /// The name of the project containing the placement in which to associate the device.
        public let projectName: String
        /// The name of the placement in which to associate the device.
        public let placementName: String

        public init(deviceId: String, deviceTemplateName: String, projectName: String, placementName: String) {
            self.deviceId = deviceId
            self.deviceTemplateName = deviceTemplateName
            self.projectName = projectName
            self.placementName = placementName
        }

        private enum CodingKeys: String, CodingKey {
            case deviceId = "deviceId"
            case deviceTemplateName = "deviceTemplateName"
            case projectName = "projectName"
            case placementName = "placementName"
        }
    }

    public struct ListProjectsResponse: AWSShape {
        public static var _members: [AWSShapeMember] = [
            AWSShapeMember(label: "nextToken", required: false, type: .string), 
            AWSShapeMember(label: "projects", required: true, type: .list)
        ]
        /// The token used to retrieve the next set of results - will be effectively empty if there are no further results.
        public let nextToken: String?
        /// An object containing the list of projects.
        public let projects: [ProjectSummary]

        public init(nextToken: String? = nil, projects: [ProjectSummary]) {
            self.nextToken = nextToken
            self.projects = projects
        }

        private enum CodingKeys: String, CodingKey {
            case nextToken = "nextToken"
            case projects = "projects"
        }
    }

    public struct CreateProjectRequest: AWSShape {
        public static var _members: [AWSShapeMember] = [
            AWSShapeMember(label: "placementTemplate", required: false, type: .structure), 
            AWSShapeMember(label: "projectName", required: true, type: .string), 
            AWSShapeMember(label: "description", required: false, type: .string)
        ]
        /// The schema defining the placement to be created. A placement template defines placement default attributes and device templates. You cannot add or remove device templates after the project has been created. However, you can update callbackOverrides for the device templates using the UpdateProject API.
        public let placementTemplate: PlacementTemplate?
        /// The name of the project to create.
        public let projectName: String
        /// An optional description for the project.
        public let description: String?

        public init(placementTemplate: PlacementTemplate? = nil, projectName: String, description: String? = nil) {
            self.placementTemplate = placementTemplate
            self.projectName = projectName
            self.description = description
        }

        private enum CodingKeys: String, CodingKey {
            case placementTemplate = "placementTemplate"
            case projectName = "projectName"
            case description = "description"
        }
    }

    public struct DeleteProjectRequest: AWSShape {
        public static var _members: [AWSShapeMember] = [
            AWSShapeMember(label: "projectName", location: .uri(locationName: "projectName"), required: true, type: .string)
        ]
        /// The name of the empty project to delete.
        public let projectName: String

        public init(projectName: String) {
            self.projectName = projectName
        }

        private enum CodingKeys: String, CodingKey {
            case projectName = "projectName"
        }
    }

    public struct GetDevicesInPlacementRequest: AWSShape {
        public static var _members: [AWSShapeMember] = [
            AWSShapeMember(label: "projectName", location: .uri(locationName: "projectName"), required: true, type: .string), 
            AWSShapeMember(label: "placementName", location: .uri(locationName: "placementName"), required: true, type: .string)
        ]
        /// The name of the project containing the placement.
        public let projectName: String
        /// The name of the placement to get the devices from.
        public let placementName: String

        public init(projectName: String, placementName: String) {
            self.projectName = projectName
            self.placementName = placementName
        }

        private enum CodingKeys: String, CodingKey {
            case projectName = "projectName"
            case placementName = "placementName"
        }
    }

    public struct DescribePlacementRequest: AWSShape {
        public static var _members: [AWSShapeMember] = [
            AWSShapeMember(label: "placementName", location: .uri(locationName: "placementName"), required: true, type: .string), 
            AWSShapeMember(label: "projectName", location: .uri(locationName: "projectName"), required: true, type: .string)
        ]
        /// The name of the placement within a project.
        public let placementName: String
        /// The project containing the placement to be described.
        public let projectName: String

        public init(placementName: String, projectName: String) {
            self.placementName = placementName
            self.projectName = projectName
        }

        private enum CodingKeys: String, CodingKey {
            case placementName = "placementName"
            case projectName = "projectName"
        }
    }

    public struct DeviceTemplate: AWSShape {
        public static var _members: [AWSShapeMember] = [
            AWSShapeMember(label: "deviceType", required: false, type: .string), 
            AWSShapeMember(label: "callbackOverrides", required: false, type: .map)
        ]
        /// The device type, which currently must be "button".
        public let deviceType: String?
        /// An optional Lambda function to invoke instead of the default Lambda function provided by the placement template.
        public let callbackOverrides: [String: String]?

        public init(deviceType: String? = nil, callbackOverrides: [String: String]? = nil) {
            self.deviceType = deviceType
            self.callbackOverrides = callbackOverrides
        }

        private enum CodingKeys: String, CodingKey {
            case deviceType = "deviceType"
            case callbackOverrides = "callbackOverrides"
        }
    }

    public struct ProjectDescription: AWSShape {
        public static var _members: [AWSShapeMember] = [
            AWSShapeMember(label: "placementTemplate", required: false, type: .structure), 
            AWSShapeMember(label: "description", required: false, type: .string), 
            AWSShapeMember(label: "projectName", required: true, type: .string), 
            AWSShapeMember(label: "createdDate", required: true, type: .timestamp), 
            AWSShapeMember(label: "updatedDate", required: true, type: .timestamp)
        ]
        /// An object describing the project's placement specifications.
        public let placementTemplate: PlacementTemplate?
        /// The description of the project.
        public let description: String?
        /// The name of the project for which to obtain information from.
        public let projectName: String
        /// The date when the project was originally created, in UNIX epoch time format.
        public let createdDate: TimeStamp
        /// The date when the project was last updated, in UNIX epoch time format. If the project was not updated, then createdDate and updatedDate are the same.
        public let updatedDate: TimeStamp

        public init(placementTemplate: PlacementTemplate? = nil, description: String? = nil, projectName: String, createdDate: TimeStamp, updatedDate: TimeStamp) {
            self.placementTemplate = placementTemplate
            self.description = description
            self.projectName = projectName
            self.createdDate = createdDate
            self.updatedDate = updatedDate
        }

        private enum CodingKeys: String, CodingKey {
            case placementTemplate = "placementTemplate"
            case description = "description"
            case projectName = "projectName"
            case createdDate = "createdDate"
            case updatedDate = "updatedDate"
        }
    }

    public struct PlacementTemplate: AWSShape {
        public static var _members: [AWSShapeMember] = [
            AWSShapeMember(label: "deviceTemplates", required: false, type: .map), 
            AWSShapeMember(label: "defaultAttributes", required: false, type: .map)
        ]
        /// An object specifying the DeviceTemplate for all placements using this (PlacementTemplate) template.
        public let deviceTemplates: [String: DeviceTemplate]?
        /// The default attributes (key/value pairs) to be applied to all placements using this template.
        public let defaultAttributes: [String: String]?

        public init(deviceTemplates: [String: DeviceTemplate]? = nil, defaultAttributes: [String: String]? = nil) {
            self.deviceTemplates = deviceTemplates
            self.defaultAttributes = defaultAttributes
        }

        private enum CodingKeys: String, CodingKey {
            case deviceTemplates = "deviceTemplates"
            case defaultAttributes = "defaultAttributes"
        }
    }

    public struct DescribeProjectRequest: AWSShape {
        public static var _members: [AWSShapeMember] = [
            AWSShapeMember(label: "projectName", location: .uri(locationName: "projectName"), required: true, type: .string)
        ]
        /// The name of the project to be described.
        public let projectName: String

        public init(projectName: String) {
            self.projectName = projectName
        }

        private enum CodingKeys: String, CodingKey {
            case projectName = "projectName"
        }
    }

    public struct CreatePlacementResponse: AWSShape {

    }

    public struct ListPlacementsRequest: AWSShape {
        public static var _members: [AWSShapeMember] = [
            AWSShapeMember(label: "projectName", location: .uri(locationName: "projectName"), required: true, type: .string), 
            AWSShapeMember(label: "nextToken", location: .querystring(locationName: "nextToken"), required: false, type: .string), 
            AWSShapeMember(label: "maxResults", location: .querystring(locationName: "maxResults"), required: false, type: .integer)
        ]
        /// The project containing the placements to be listed.
        public let projectName: String
        /// The token to retrieve the next set of results.
        public let nextToken: String?
        /// The maximum number of results to return per request. If not set, a default value of 100 is used.
        public let maxResults: Int32?

        public init(projectName: String, nextToken: String? = nil, maxResults: Int32? = nil) {
            self.projectName = projectName
            self.nextToken = nextToken
            self.maxResults = maxResults
        }

        private enum CodingKeys: String, CodingKey {
            case projectName = "projectName"
            case nextToken = "nextToken"
            case maxResults = "maxResults"
        }
    }

    public struct DisassociateDeviceFromPlacementRequest: AWSShape {
        public static var _members: [AWSShapeMember] = [
            AWSShapeMember(label: "projectName", location: .uri(locationName: "projectName"), required: true, type: .string), 
            AWSShapeMember(label: "placementName", location: .uri(locationName: "placementName"), required: true, type: .string), 
            AWSShapeMember(label: "deviceTemplateName", location: .uri(locationName: "deviceTemplateName"), required: true, type: .string)
        ]
        /// The name of the project that contains the placement.
        public let projectName: String
        /// The name of the placement that the device should be removed from.
        public let placementName: String
        /// The device ID that should be removed from the placement.
        public let deviceTemplateName: String

        public init(projectName: String, placementName: String, deviceTemplateName: String) {
            self.projectName = projectName
            self.placementName = placementName
            self.deviceTemplateName = deviceTemplateName
        }

        private enum CodingKeys: String, CodingKey {
            case projectName = "projectName"
            case placementName = "placementName"
            case deviceTemplateName = "deviceTemplateName"
        }
    }

    public struct ListPlacementsResponse: AWSShape {
        public static var _members: [AWSShapeMember] = [
            AWSShapeMember(label: "placements", required: true, type: .list), 
            AWSShapeMember(label: "nextToken", required: false, type: .string)
        ]
        /// An object listing the requested placements.
        public let placements: [PlacementSummary]
        /// The token used to retrieve the next set of results - will be effectively empty if there are no further results.
        public let nextToken: String?

        public init(placements: [PlacementSummary], nextToken: String? = nil) {
            self.placements = placements
            self.nextToken = nextToken
        }

        private enum CodingKeys: String, CodingKey {
            case placements = "placements"
            case nextToken = "nextToken"
        }
    }

    public struct DeletePlacementResponse: AWSShape {

    }

    public struct PlacementSummary: AWSShape {
        public static var _members: [AWSShapeMember] = [
            AWSShapeMember(label: "placementName", required: true, type: .string), 
            AWSShapeMember(label: "updatedDate", required: true, type: .timestamp), 
            AWSShapeMember(label: "projectName", required: true, type: .string), 
            AWSShapeMember(label: "createdDate", required: true, type: .timestamp)
        ]
        /// The name of the placement being summarized.
        public let placementName: String
        /// The date when the placement was last updated, in UNIX epoch time format. If the placement was not updated, then createdDate and updatedDate are the same.
        public let updatedDate: TimeStamp
        /// The name of the project containing the placement.
        public let projectName: String
        /// The date when the placement was originally created, in UNIX epoch time format.
        public let createdDate: TimeStamp

        public init(placementName: String, updatedDate: TimeStamp, projectName: String, createdDate: TimeStamp) {
            self.placementName = placementName
            self.updatedDate = updatedDate
            self.projectName = projectName
            self.createdDate = createdDate
        }

        private enum CodingKeys: String, CodingKey {
            case placementName = "placementName"
            case updatedDate = "updatedDate"
            case projectName = "projectName"
            case createdDate = "createdDate"
        }
    }

    public struct DisassociateDeviceFromPlacementResponse: AWSShape {

    }

    public struct DeleteProjectResponse: AWSShape {

    }

    public struct PlacementDescription: AWSShape {
        public static var _members: [AWSShapeMember] = [
            AWSShapeMember(label: "placementName", required: true, type: .string), 
            AWSShapeMember(label: "attributes", required: true, type: .map), 
            AWSShapeMember(label: "updatedDate", required: true, type: .timestamp), 
            AWSShapeMember(label: "projectName", required: true, type: .string), 
            AWSShapeMember(label: "createdDate", required: true, type: .timestamp)
        ]
        /// The name of the placement.
        public let placementName: String
        /// The user-defined attributes associated with the placement.
        public let attributes: [String: String]
        /// The date when the placement was last updated, in UNIX epoch time format. If the placement was not updated, then createdDate and updatedDate are the same.
        public let updatedDate: TimeStamp
        /// The name of the project containing the placement.
        public let projectName: String
        /// The date when the placement was initially created, in UNIX epoch time format.
        public let createdDate: TimeStamp

        public init(placementName: String, attributes: [String: String], updatedDate: TimeStamp, projectName: String, createdDate: TimeStamp) {
            self.placementName = placementName
            self.attributes = attributes
            self.updatedDate = updatedDate
            self.projectName = projectName
            self.createdDate = createdDate
        }

        private enum CodingKeys: String, CodingKey {
            case placementName = "placementName"
            case attributes = "attributes"
            case updatedDate = "updatedDate"
            case projectName = "projectName"
            case createdDate = "createdDate"
        }
    }

    public struct CreateProjectResponse: AWSShape {

    }

    public struct AssociateDeviceWithPlacementResponse: AWSShape {

    }

    public struct CreatePlacementRequest: AWSShape {
        public static var _members: [AWSShapeMember] = [
            AWSShapeMember(label: "placementName", required: true, type: .string), 
            AWSShapeMember(label: "attributes", required: false, type: .map), 
            AWSShapeMember(label: "projectName", location: .uri(locationName: "projectName"), required: true, type: .string)
        ]
        /// The name of the placement to be created.
        public let placementName: String
        /// Optional user-defined key/value pairs providing contextual data (such as location or function) for the placement.
        public let attributes: [String: String]?
        /// The name of the project in which to create the placement.
        public let projectName: String

        public init(placementName: String, attributes: [String: String]? = nil, projectName: String) {
            self.placementName = placementName
            self.attributes = attributes
            self.projectName = projectName
        }

        private enum CodingKeys: String, CodingKey {
            case placementName = "placementName"
            case attributes = "attributes"
            case projectName = "projectName"
        }
    }

    public struct UpdatePlacementResponse: AWSShape {

    }

    public struct ProjectSummary: AWSShape {
        public static var _members: [AWSShapeMember] = [
            AWSShapeMember(label: "updatedDate", required: true, type: .timestamp), 
            AWSShapeMember(label: "projectName", required: true, type: .string), 
            AWSShapeMember(label: "createdDate", required: true, type: .timestamp)
        ]
        /// The date when the project was last updated, in UNIX epoch time format. If the project was not updated, then createdDate and updatedDate are the same.
        public let updatedDate: TimeStamp
        /// The name of the project being summarized.
        public let projectName: String
        /// The date when the project was originally created, in UNIX epoch time format.
        public let createdDate: TimeStamp

        public init(updatedDate: TimeStamp, projectName: String, createdDate: TimeStamp) {
            self.updatedDate = updatedDate
            self.projectName = projectName
            self.createdDate = createdDate
        }

        private enum CodingKeys: String, CodingKey {
            case updatedDate = "updatedDate"
            case projectName = "projectName"
            case createdDate = "createdDate"
        }
    }

    public struct UpdatePlacementRequest: AWSShape {
        public static var _members: [AWSShapeMember] = [
            AWSShapeMember(label: "placementName", location: .uri(locationName: "placementName"), required: true, type: .string), 
            AWSShapeMember(label: "attributes", required: false, type: .map), 
            AWSShapeMember(label: "projectName", location: .uri(locationName: "projectName"), required: true, type: .string)
        ]
        /// The name of the placement to update.
        public let placementName: String
        /// The user-defined object of attributes used to update the placement. The maximum number of key/value pairs is 50.
        public let attributes: [String: String]?
        /// The name of the project containing the placement to be updated.
        public let projectName: String

        public init(placementName: String, attributes: [String: String]? = nil, projectName: String) {
            self.placementName = placementName
            self.attributes = attributes
            self.projectName = projectName
        }

        private enum CodingKeys: String, CodingKey {
            case placementName = "placementName"
            case attributes = "attributes"
            case projectName = "projectName"
        }
    }

    public struct UpdateProjectRequest: AWSShape {
        public static var _members: [AWSShapeMember] = [
            AWSShapeMember(label: "placementTemplate", required: false, type: .structure), 
            AWSShapeMember(label: "projectName", location: .uri(locationName: "projectName"), required: true, type: .string), 
            AWSShapeMember(label: "description", required: false, type: .string)
        ]
        /// An object defining the project update. Once a project has been created, you cannot add device template names to the project. However, for a given placementTemplate, you can update the associated callbackOverrides for the device definition using this API.
        public let placementTemplate: PlacementTemplate?
        /// The name of the project to be updated.
        public let projectName: String
        /// An optional user-defined description for the project.
        public let description: String?

        public init(placementTemplate: PlacementTemplate? = nil, projectName: String, description: String? = nil) {
            self.placementTemplate = placementTemplate
            self.projectName = projectName
            self.description = description
        }

        private enum CodingKeys: String, CodingKey {
            case placementTemplate = "placementTemplate"
            case projectName = "projectName"
            case description = "description"
        }
    }

    public struct GetDevicesInPlacementResponse: AWSShape {
        public static var _members: [AWSShapeMember] = [
            AWSShapeMember(label: "devices", required: true, type: .map)
        ]
        /// An object containing the devices (zero or more) within the placement.
        public let devices: [String: String]

        public init(devices: [String: String]) {
            self.devices = devices
        }

        private enum CodingKeys: String, CodingKey {
            case devices = "devices"
        }
    }

    public struct DeletePlacementRequest: AWSShape {
        public static var _members: [AWSShapeMember] = [
            AWSShapeMember(label: "placementName", location: .uri(locationName: "placementName"), required: true, type: .string), 
            AWSShapeMember(label: "projectName", location: .uri(locationName: "projectName"), required: true, type: .string)
        ]
        /// The name of the empty placement to delete.
        public let placementName: String
        /// The project containing the empty placement to delete.
        public let projectName: String

        public init(placementName: String, projectName: String) {
            self.placementName = placementName
            self.projectName = projectName
        }

        private enum CodingKeys: String, CodingKey {
            case placementName = "placementName"
            case projectName = "projectName"
        }
    }

    public struct UpdateProjectResponse: AWSShape {

    }

    public struct DescribePlacementResponse: AWSShape {
        public static var _members: [AWSShapeMember] = [
            AWSShapeMember(label: "placement", required: true, type: .structure)
        ]
        /// An object describing the placement.
        public let placement: PlacementDescription

        public init(placement: PlacementDescription) {
            self.placement = placement
        }

        private enum CodingKeys: String, CodingKey {
            case placement = "placement"
        }
    }

    public struct ListProjectsRequest: AWSShape {
        public static var _members: [AWSShapeMember] = [
            AWSShapeMember(label: "nextToken", location: .querystring(locationName: "nextToken"), required: false, type: .string), 
            AWSShapeMember(label: "maxResults", location: .querystring(locationName: "maxResults"), required: false, type: .integer)
        ]
        /// The token to retrieve the next set of results.
        public let nextToken: String?
        /// The maximum number of results to return per request. If not set, a default value of 100 is used.
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

    public struct DescribeProjectResponse: AWSShape {
        public static var _members: [AWSShapeMember] = [
            AWSShapeMember(label: "project", required: true, type: .structure)
        ]
        /// An object describing the project.
        public let project: ProjectDescription

        public init(project: ProjectDescription) {
            self.project = project
        }

        private enum CodingKeys: String, CodingKey {
            case project = "project"
        }
    }

}