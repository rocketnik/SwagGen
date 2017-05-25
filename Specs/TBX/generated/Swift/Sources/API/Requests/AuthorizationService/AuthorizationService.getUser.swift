//
// Generated by SwagGen
// https://github.com/yonaskolb/SwagGen
//

import Foundation
import JSONUtilities

extension API.AuthorizationService {

    public enum AuthorizationService.getUser {

      public static let service = APIService<Response>(id: "AuthorizationService.getUser", tag: "AuthorizationService", method: "GET", path: "/AuthorizationServices/getUser", hasBody: false)

      public class Request: APIRequest<Response> {

          public struct Options {

              public var apiKey: String

              public var userToken: String

              public init(apiKey: String, userToken: String) {
                  self.apiKey = apiKey
                  self.userToken = userToken
              }
          }

          public var options: Options

          public init(options: Options) {
              self.options = options
              super.init(service: AuthorizationService.getUser.service)
          }

          /// convenience initialiser so an Option doesn't have to be created
          public convenience init(apiKey: String, userToken: String) {
              let options = Options(apiKey: apiKey, userToken: userToken)
              self.init(options: options)
          }

          public override var parameters: [String: Any] {
              var params: JSONDictionary = [:]
              params["api_key"] = options.apiKey
              params["userToken"] = options.userToken
              return params
          }
        }

        public enum Response: APIResponseValue, CustomStringConvertible, CustomDebugStringConvertible {
            public typealias SuccessType = [String: Any]

            /** Request was successful */
            case success200([String: Any])

            public var success: [String: Any]? {
                switch self {
                case .success200(let response): return response
                default: return nil
                }
            }

            public var response: Any {
                switch self {
                case .success200(let response): return response
                }
            }

            public var statusCode: Int {
              switch self {
              case .success200: return 200
              }
            }

            public var successful: Bool {
              switch self {
              case .success200: return true
              }
            }

            public init(statusCode: Int, data: Data) throws {
                switch statusCode {
                case 200: self = try .success200(JSONDecoder.decode(data: data))
                default: throw APIError.unexpectedStatusCode(statusCode: statusCode, data: data)
                }
            }

            public var description: String {
                return "\(statusCode) \(successful ? "success" : "failure")"
            }

            public var debugDescription: String {
                var string = description
                let responseString = "\(response)"
                if responseString != "()" {
                    string += "\n\(responseString)"
                }
                return string
            }
        }
    }
}
