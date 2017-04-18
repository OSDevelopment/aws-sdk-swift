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

import Foundation
import Core

/**
AWS Step Functions AWS Step Functions is a web service that enables you to coordinate the components of distributed applications and microservices using visual workflows. You build applications from individual components that each perform a discrete function, or task, allowing you to scale and change applications quickly. Step Functions provides a graphical console to visualize the components of your application as a series of steps. It automatically triggers and tracks each step, and retries when there are errors, so your application executes in order and as expected, every time. Step Functions logs the state of each step, so when things do go wrong, you can diagnose and debug problems quickly. Step Functions manages the operations and underlying infrastructure for you to ensure your application is available at any scale. You can run tasks on the AWS cloud, on your own servers, or an any system that has access to AWS. Step Functions can be accessed and used with the Step Functions console, the AWS SDKs (included with your Beta release invitation email), or an HTTP API (the subject of this document).
*/
public struct States {

    let client: AWSClient

    public init(accessKeyId: String? = nil, secretAccessKey: String? = nil, region: Core.Region? = nil, endpoint: String? = nil, middlewares: [AWSRequestMiddleware] = []) {
        self.client = AWSClient(
            accessKeyId: accessKeyId,
            secretAccessKey: secretAccessKey,
            region: region,
            amzTarget: "AWSStepFunctions",
            service: "states",
            serviceProtocol: .json,
            endpoint: endpoint,
            middlewares: [],
            possibleErrorTypes: [StatesError.self]
        )
    }

    ///  Used by workers to retrieve a task (with the specified activity ARN) scheduled for execution by a running state machine. This initiates a long poll, where the service holds the HTTP connection open and responds as soon as a task becomes available (i.e. an execution of a task of this type is needed.) The maximum time the service holds on to the request before responding is 60 seconds. If no task is available within 60 seconds, the poll will return an empty result, that is, the taskToken returned is an empty string.  Workers should set their client side socket timeout to at least 65 seconds (5 seconds higher than the maximum time the service may hold the poll request). 
    public func getActivityTask(_ input: GetActivityTaskInput) throws -> GetActivityTaskOutput {
        return try client.send(operation: "GetActivityTask", path: "/", httpMethod: "POST", input: input)
    }

    ///  Used by workers to report that the task identified by the taskToken completed successfully.
    public func sendTaskSuccess(_ input: SendTaskSuccessInput) throws -> SendTaskSuccessOutput {
        return try client.send(operation: "SendTaskSuccess", path: "/", httpMethod: "POST", input: input)
    }

    ///  Returns the history of the specified execution as a list of events. By default, the results are returned in ascending order of the timeStamp of the events. Use the reverseOrder parameter to get the latest events first. The results may be split into multiple pages. To retrieve subsequent pages, make the call again using the nextToken returned by the previous call.
    public func getExecutionHistory(_ input: GetExecutionHistoryInput) throws -> GetExecutionHistoryOutput {
        return try client.send(operation: "GetExecutionHistory", path: "/", httpMethod: "POST", input: input)
    }

    ///  Used by workers to report that the task identified by the taskToken failed.
    public func sendTaskFailure(_ input: SendTaskFailureInput) throws -> SendTaskFailureOutput {
        return try client.send(operation: "SendTaskFailure", path: "/", httpMethod: "POST", input: input)
    }

    ///  Starts a state machine execution.
    public func startExecution(_ input: StartExecutionInput) throws -> StartExecutionOutput {
        return try client.send(operation: "StartExecution", path: "/", httpMethod: "POST", input: input)
    }

    ///  Describes an activity.
    public func describeActivity(_ input: DescribeActivityInput) throws -> DescribeActivityOutput {
        return try client.send(operation: "DescribeActivity", path: "/", httpMethod: "POST", input: input)
    }

    ///  Lists the existing activities. The results may be split into multiple pages. To retrieve subsequent pages, make the call again using the nextToken returned by the previous call.
    public func listActivities(_ input: ListActivitiesInput) throws -> ListActivitiesOutput {
        return try client.send(operation: "ListActivities", path: "/", httpMethod: "POST", input: input)
    }

    ///  Describes an execution.
    public func describeExecution(_ input: DescribeExecutionInput) throws -> DescribeExecutionOutput {
        return try client.send(operation: "DescribeExecution", path: "/", httpMethod: "POST", input: input)
    }

    ///  Lists the existing state machines. The results may be split into multiple pages. To retrieve subsequent pages, make the call again using the nextToken returned by the previous call.
    public func listStateMachines(_ input: ListStateMachinesInput) throws -> ListStateMachinesOutput {
        return try client.send(operation: "ListStateMachines", path: "/", httpMethod: "POST", input: input)
    }

    ///  Describes a state machine.
    public func describeStateMachine(_ input: DescribeStateMachineInput) throws -> DescribeStateMachineOutput {
        return try client.send(operation: "DescribeStateMachine", path: "/", httpMethod: "POST", input: input)
    }

    ///  Creates an activity.
    public func createActivity(_ input: CreateActivityInput) throws -> CreateActivityOutput {
        return try client.send(operation: "CreateActivity", path: "/", httpMethod: "POST", input: input)
    }

    ///  Creates a state machine.
    public func createStateMachine(_ input: CreateStateMachineInput) throws -> CreateStateMachineOutput {
        return try client.send(operation: "CreateStateMachine", path: "/", httpMethod: "POST", input: input)
    }

    ///  Deletes a state machine. This is an asynchronous operation-- it sets the state machine's status to "DELETING" and begins the delete process.
    public func deleteStateMachine(_ input: DeleteStateMachineInput) throws -> DeleteStateMachineOutput {
        return try client.send(operation: "DeleteStateMachine", path: "/", httpMethod: "POST", input: input)
    }

    ///  Stops an execution.
    public func stopExecution(_ input: StopExecutionInput) throws -> StopExecutionOutput {
        return try client.send(operation: "StopExecution", path: "/", httpMethod: "POST", input: input)
    }

    ///  Lists the executions of a state machine that meet the filtering criteria. The results may be split into multiple pages. To retrieve subsequent pages, make the call again using the nextToken returned by the previous call.
    public func listExecutions(_ input: ListExecutionsInput) throws -> ListExecutionsOutput {
        return try client.send(operation: "ListExecutions", path: "/", httpMethod: "POST", input: input)
    }

    ///  Used by workers to report to the service that the task represented by the specified taskToken is still making progress. This action resets the Heartbeat clock. The Heartbeat threshold is specified in the state machine's Amazon States Language definition. This action does not in itself create an event in the execution history. However, if the task times out, the execution history will contain an ActivityTimedOut event.  The Timeout of a task, defined in the state machine's Amazon States Language definition, is its maximum allowed duration, regardless of the number of SendTaskHeartbeat requests received.   This operation is only useful for long-lived tasks to report the liveliness of the task. 
    public func sendTaskHeartbeat(_ input: SendTaskHeartbeatInput) throws -> SendTaskHeartbeatOutput {
        return try client.send(operation: "SendTaskHeartbeat", path: "/", httpMethod: "POST", input: input)
    }

    ///  Deletes an activity.
    public func deleteActivity(_ input: DeleteActivityInput) throws -> DeleteActivityOutput {
        return try client.send(operation: "DeleteActivity", path: "/", httpMethod: "POST", input: input)
    }


}