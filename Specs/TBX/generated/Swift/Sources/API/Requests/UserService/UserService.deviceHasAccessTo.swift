//
// Generated by SwagGen
// https://github.com/yonaskolb/SwagGen
//

import Foundation
import JSONUtilities

extension API.UserService {

    public enum UserService.deviceHasAccessTo {

      public static let service = APIService<Response>(id: "UserService.deviceHasAccessTo", tag: "UserService", method: "GET", path: "/UserServices/device/{device}/hasAccessTo", hasBody: false)

      public class Request: APIRequest<Response> {

          public struct Options {

              /** The device token */
              public var device: String

              /** This must start with 'urn:' */
              public var urn: String

              /** Value that identifies what type of action the CP user is executing. */
              public var action: String

              /** The client IP, is necessary to prevent many user use the same token */
              public var ip: String

              public init(device: String, urn: String, action: String, ip: String) {
                  self.device = device
                  self.urn = urn
                  self.action = action
                  self.ip = ip
              }
          }

          public var options: Options

          public init(options: Options) {
              self.options = options
              super.init(service: UserService.deviceHasAccessTo.service)
          }

          /// convenience initialiser so an Option doesn't have to be created
          public convenience init(device: String, urn: String, action: String, ip: String) {
              let options = Options(device: device, urn: urn, action: action, ip: ip)
              self.init(options: options)
          }

          public override var path: String {
              return super.path.replacingOccurrences(of: "{" + "device" + "}", with: "\(self.options.device)")
          }

          public override var parameters: [String: Any] {
              var params: JSONDictionary = [:]
              params["urn"] = options.urn
              params["action"] = options.action
              params["ip"] = options.ip
              return params
          }
        }

        public enum Response: APIResponseValue, CustomStringConvertible, CustomDebugStringConvertible {
            public typealias SuccessType = HasAccessToObject

            /** Request was successful */
            case success200(HasAccessToObject)

            /** Bad Request  */
            case failure400(ResponseError)

            /** Unauthorized  */
            case failure401(ResponseError)

            /** Customer or Device not Found */
            case failure404(ResponseError)

            /** The IDP took too long to respond */
            case failure408(ResponseError)

            /** Device was Logged Out or the customer not longer exists */
            case failure410(ResponseError)

            /** The IDP return an error or the received response from IDP is invalid */
            case failure424(ResponseError)

            public var success: HasAccessToObject? {
                switch self {
                case .success200(let response): return response
                default: return nil
                }
            }

            public var failure: ResponseError? {
                switch self {
                case .failure400(let response): return response
                case .failure401(let response): return response
                case .failure404(let response): return response
                case .failure408(let response): return response
                case .failure410(let response): return response
                case .failure424(let response): return response
                default: return nil
                }
            }

            /// either success or failure value. Success is anything in the 200..<300 status code range
            public var responseResult: APIResponseResult<HasAccessToObject, ResponseError> {
                if let successValue = success {
                    return .success(successValue)
                } else if let failureValue = failure {
                    return .failure(failureValue)
                } else {
                    fatalError("Response does not have success or failure response")
                }
            }

            public var response: Any {
                switch self {
                case .success200(let response): return response
                case .failure400(let response): return response
                case .failure401(let response): return response
                case .failure404(let response): return response
                case .failure408(let response): return response
                case .failure410(let response): return response
                case .failure424(let response): return response
                }
            }

            public var statusCode: Int {
              switch self {
              case .success200: return 200
              case .failure400: return 400
              case .failure401: return 401
              case .failure404: return 404
              case .failure408: return 408
              case .failure410: return 410
              case .failure424: return 424
              }
            }

            public var successful: Bool {
              switch self {
              case .success200: return true
              case .failure400: return false
              case .failure401: return false
              case .failure404: return false
              case .failure408: return false
              case .failure410: return false
              case .failure424: return false
              }
            }

            public init(statusCode: Int, data: Data) throws {
                switch statusCode {
                case 200: self = try .success200(JSONDecoder.decode(data: data))
                case 400: self = try .failure400(JSONDecoder.decode(data: data))
                case 401: self = try .failure401(JSONDecoder.decode(data: data))
                case 404: self = try .failure404(JSONDecoder.decode(data: data))
                case 408: self = try .failure408(JSONDecoder.decode(data: data))
                case 410: self = try .failure410(JSONDecoder.decode(data: data))
                case 424: self = try .failure424(JSONDecoder.decode(data: data))
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
