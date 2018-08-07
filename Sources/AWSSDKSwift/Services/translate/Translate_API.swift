// THIS FILE IS AUTOMATICALLY GENERATED by https://github.com/noppoMan/aws-sdk-swift/blob/master/Sources/CodeGenerator/main.swift. DO NOT EDIT.

import Foundation
import AWSSDKSwiftCore

/**
Provides translation between English and one of six languages, or between one of the six languages and English.
*/
public struct Translate {

    let client: AWSClient

    public init(accessKeyId: String? = nil, secretAccessKey: String? = nil, region: AWSSDKSwiftCore.Region? = nil, endpoint: String? = nil) {
        self.client = AWSClient(
            accessKeyId: accessKeyId,
            secretAccessKey: secretAccessKey,
            region: region,
            amzTarget: "AWSShineFrontendService_20170701",
            service: "translate",
            serviceProtocol: ServiceProtocol(type: .json, version: ServiceProtocol.Version(major: 1, minor: 1)),
            apiVersion: "2017-07-01",
            endpoint: endpoint,
            middlewares: [],
            possibleErrorTypes: [TranslateError.self]
        )
    }

    ///  Translates input text from the source language to the target language. You can translate between English (en) and one of the following languages, or between one of the following languages and English.   Arabic (ar)   Chinese (Simplified) (zh)   French (fr)   German (de)   Portuguese (pt)   Spanish (es)   To have Amazon Translate determine the source language of your text, you can specify auto in the SourceLanguageCode field. If you specify auto, Amazon Translate will call Amazon Comprehend to determine the source language.
    public func translateText(_ input: TranslateTextRequest) throws -> TranslateTextResponse {
        return try client.send(operation: "TranslateText", path: "/", httpMethod: "POST", input: input)
    }


}