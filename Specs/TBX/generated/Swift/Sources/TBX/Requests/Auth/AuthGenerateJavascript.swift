//
// Generated by SwagGen
// https://github.com/yonaskolb/SwagGen
//

import Foundation
import JSONUtilities

extension TBX.Auth {

    public enum AuthGenerateJavascript {

      public static let service = APIService<Response>(id: "auth.generateJavascript", tag: "auth", method: "GET", path: "/auth/{cp}/auth.js", hasBody: false)

      public class Request: APIRequest<Response> {

          public struct Options {

              /** ShortName of Content Provider */
              public var cp: String

              public init(cp: String) {
                  self.cp = cp
              }
          }

          public var options: Options

          public init(options: Options) {
              self.options = options
              super.init(service: AuthGenerateJavascript.service)
          }

          /// convenience initialiser so an Option doesn't have to be created
          public convenience init(cp: String) {
              let options = Options(cp: cp)
              self.init(options: options)
          }

          public override var path: String {
              return super.path.replacingOccurrences(of: "{" + "cp" + "}", with: "\(self.options.cp)")
          }
        }

        public enum Response: APIResponseValue, CustomStringConvertible, CustomDebugStringConvertible {
            public typealias SuccessType = String

            /** Request was successful */
            case status200(String)

            public var success: String? {
                switch self {
                case .status200(let response): return response
                }
            }

            public var response: Any {
                switch self {
                case .status200(let response): return response
                }
            }

            public var statusCode: Int {
              switch self {
              case .status200: return 200
              }
            }

            public var successful: Bool {
              switch self {
              case .status200: return true
              }
            }

            public init(statusCode: Int, data: Data) throws {
                switch statusCode {
                case 200: self = try .status200(JSONDecoder.decode(data: data))
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
