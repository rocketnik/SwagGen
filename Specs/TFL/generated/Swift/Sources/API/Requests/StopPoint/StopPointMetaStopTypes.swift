//
// Generated by SwagGen
// https://github.com/yonaskolb/SwagGen
//

import Foundation
import JSONUtilities

extension API.StopPoint {

    public enum StopPointMetaStopTypes {

      public static let service = APIService<Response>(id: "StopPoint_MetaStopTypes", tag: "StopPoint", method: "GET", path: "/StopPoint/Meta/StopTypes", hasBody: false)

      public class Request: APIRequest<Response> {

          public init() {
              super.init(service: StopPointMetaStopTypes.service)
          }
        }

        public enum Response: APIResponseValue, CustomStringConvertible, CustomDebugStringConvertible {
            public typealias SuccessType = [String]

            /** OK */
            case success200([String])

            public var success: [String]? {
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
