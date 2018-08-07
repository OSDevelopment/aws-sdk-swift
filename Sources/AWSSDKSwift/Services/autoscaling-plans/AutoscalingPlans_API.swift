// THIS FILE IS AUTOMATICALLY GENERATED by https://github.com/noppoMan/aws-sdk-swift/blob/master/Sources/CodeGenerator/main.swift. DO NOT EDIT.

import Foundation
import AWSSDKSwiftCore

/**
AWS Auto Scaling Use AWS Auto Scaling to quickly discover all the scalable AWS resources for your application and configure dynamic scaling for your scalable resources. To get started, create a scaling plan with a set of instructions used to configure dynamic scaling for the scalable resources in your application. AWS Auto Scaling creates target tracking scaling policies for the scalable resources in your scaling plan. Target tracking scaling policies adjust the capacity of your scalable resource as required to maintain resource utilization at the target value that you specified.
*/
public struct AutoscalingPlans {

    let client: AWSClient

    public init(accessKeyId: String? = nil, secretAccessKey: String? = nil, region: AWSSDKSwiftCore.Region? = nil, endpoint: String? = nil) {
        self.client = AWSClient(
            accessKeyId: accessKeyId,
            secretAccessKey: secretAccessKey,
            region: region,
            amzTarget: "AnyScaleScalingPlannerFrontendService",
            service: "autoscaling",
            serviceProtocol: ServiceProtocol(type: .json, version: ServiceProtocol.Version(major: 1, minor: 1)),
            apiVersion: "2018-01-06",
            endpoint: endpoint,
            middlewares: [],
            possibleErrorTypes: [AutoscalingPlansError.self]
        )
    }

    ///  Describes the scalable resources in the specified scaling plan.
    public func describeScalingPlanResources(_ input: DescribeScalingPlanResourcesRequest) throws -> DescribeScalingPlanResourcesResponse {
        return try client.send(operation: "DescribeScalingPlanResources", path: "/", httpMethod: "POST", input: input)
    }

    ///  Creates a scaling plan. A scaling plan contains a set of instructions used to configure dynamic scaling for the scalable resources in your application. AWS Auto Scaling creates target tracking scaling policies based on the scaling instructions in your scaling plan.
    public func createScalingPlan(_ input: CreateScalingPlanRequest) throws -> CreateScalingPlanResponse {
        return try client.send(operation: "CreateScalingPlan", path: "/", httpMethod: "POST", input: input)
    }

    ///  Updates the scaling plan for the specified scaling plan. You cannot update a scaling plan if it is in the process of being created, updated, or deleted.
    public func updateScalingPlan(_ input: UpdateScalingPlanRequest) throws -> UpdateScalingPlanResponse {
        return try client.send(operation: "UpdateScalingPlan", path: "/", httpMethod: "POST", input: input)
    }

    ///  Describes the specified scaling plans or all of your scaling plans.
    public func describeScalingPlans(_ input: DescribeScalingPlansRequest) throws -> DescribeScalingPlansResponse {
        return try client.send(operation: "DescribeScalingPlans", path: "/", httpMethod: "POST", input: input)
    }

    ///  Deletes the specified scaling plan.
    public func deleteScalingPlan(_ input: DeleteScalingPlanRequest) throws -> DeleteScalingPlanResponse {
        return try client.send(operation: "DeleteScalingPlan", path: "/", httpMethod: "POST", input: input)
    }


}