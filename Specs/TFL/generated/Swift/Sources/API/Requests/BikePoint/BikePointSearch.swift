//
// Generated by SwagGen
// https://github.com/yonaskolb/SwagGen
//

import Foundation
import JSONUtilities

extension API.BikePoint {

    public enum BikePointSearch {

      public static let service = APIService<Response>(id: "BikePoint_Search", tag: "BikePoint", method: "GET", path: "/BikePoint/Search", hasBody: false)

      public class Request: APIRequest<Response> {

          public struct Options {

              /** The search term e.g. "St. James" */
              public var query: String

              public init(query: String) {
                  self.query = query
              }
          }

          public var options: Options

          public init(options: Options) {
              self.options = options
              super.init(service: BikePointSearch.service)
          }

          /// convenience initialiser so an Option doesn't have to be created
          public convenience init(query: String) {
              let options = Options(query: query)
              self.init(options: options)
          }

          public override var parameters: [String: Any] {
              var params: JSONDictionary = [:]
              params["query"] = options.query
              return params
          }
        }

        public enum Response: APIResponseValue, CustomStringConvertible, CustomDebugStringConvertible {
            public typealias SuccessType = [Place]

            /** OK */
            case success200([Place])

            public var success: [Place]? {
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
