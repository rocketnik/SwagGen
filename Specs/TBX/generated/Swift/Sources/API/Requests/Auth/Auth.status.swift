//
// Generated by SwagGen
// https://github.com/yonaskolb/SwagGen
//

import Foundation
import JSONUtilities

extension API.Auth {

    public enum Auth.status {

      public static let service = APIService<Response>(id: "auth.status", tag: "auth", method: "GET", path: "/auth/{cp}/status.json", hasBody: false)

      public class Request: APIRequest<Response> {

          public struct Options {

              /** ShortName of Content Provider */
              public var cp: String

              /** *deprecated* if this parameter is sent the response will be a JSONP */
              public var callback: String?

              public init(cp: String, callback: String? = nil) {
                  self.cp = cp
                  self.callback = callback
              }
          }

          public var options: Options

          public init(options: Options) {
              self.options = options
              super.init(service: Auth.status.service)
          }

          /// convenience initialiser so an Option doesn't have to be created
          public convenience init(cp: String, callback: String? = nil) {
              let options = Options(cp: cp, callback: callback)
              self.init(options: options)
          }

          public override var path: String {
              return super.path.replacingOccurrences(of: "{" + "cp" + "}", with: "\(self.options.cp)")
          }

          public override var parameters: [String: Any] {
              var params: JSONDictionary = [:]
              if let callback = options.callback {
                params["callback"] = callback
              }
              return params
          }
        }

        public enum Response: APIResponseValue, CustomStringConvertible, CustomDebugStringConvertible {
            public typealias SuccessType = Auth

            /** Request was successful */
            case success200(Auth)

            public var success: Auth? {
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
