//
// Generated by SwagGen
// https://github.com/yonaskolb/SwagGen
//

import Foundation
import JSONUtilities

extension TestSpec.TestTag {

    /** operation with an inline body */
    public enum PostInlinebody {

      public static let service = APIService<Response>(id: "postInlinebody", tag: "TestTag", method: "POST", path: "/inlinebody", hasBody: true)

      public class Request: APIRequest<Response> {

          public var item: [String: Any]

          public init(item: [String: Any]) {
              self.item = item
              super.init(service: PostInlinebody.service)
          }

          public override var jsonBody: Any? {
              return item
          }
        }

        public enum Response: APIResponseValue, CustomStringConvertible, CustomDebugStringConvertible {
            public typealias SuccessType = Void

            /** Empty response */
            case status201

            public var success: Void? {
                switch self {
                case .status201(let response): return response
                }
            }

            public var response: Any {
                switch self {
                default: return ()
                }
            }

            public var statusCode: Int {
              switch self {
              case .status201: return 201
              }
            }

            public var successful: Bool {
              switch self {
              case .status201: return true
              }
            }

            public init(statusCode: Int, data: Data) throws {
                switch statusCode {
                case 201: self = .status201
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
