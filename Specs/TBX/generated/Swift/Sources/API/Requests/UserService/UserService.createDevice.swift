//
// Generated by SwagGen
// https://github.com/yonaskolb/SwagGen
//

import Foundation
import JSONUtilities

extension API.UserService {

    public enum UserService.createDevice {

      public static let service = APIService<Response>(id: "UserService.createDevice", tag: "UserService", method: "POST", path: "/UserServices/device", hasBody: true)

      public class Request: APIRequest<Response> {

          public struct Options {

              /** The customer subscriber id */
              public var subscriberId: String

              /** The customer country code */
              public var country: String

              /** Device Type */
              public var type: String

              /** Description to device for example the user agent */
              public var description: String

              /** Extra data to device */
              public var attributes: String?

              public init(subscriberId: String, country: String, type: String, description: String, attributes: String? = nil) {
                  self.subscriberId = subscriberId
                  self.country = country
                  self.type = type
                  self.description = description
                  self.attributes = attributes
              }
          }

          public var options: Options

          public init(options: Options) {
              self.options = options
              super.init(service: UserService.createDevice.service)
          }

          /// convenience initialiser so an Option doesn't have to be created
          public convenience init(subscriberId: String, country: String, type: String, description: String, attributes: String? = nil) {
              let options = Options(subscriberId: subscriberId, country: country, type: type, description: description, attributes: attributes)
              self.init(options: options)
          }

          public override var parameters: [String: Any] {
              var params: JSONDictionary = [:]
              params["subscriberId"] = options.subscriberId
              params["country"] = options.country
              params["type"] = options.type
              params["description"] = options.description
              if let attributes = options.attributes {
                params["attributes"] = attributes
              }
              return params
          }
        }

        public enum Response: APIResponseValue, CustomStringConvertible, CustomDebugStringConvertible {
            public typealias SuccessType = DeviceObject

            /** Request was successful */
            case success200(DeviceObject)

            /** Bad Request  */
            case failure400(ResponseError)

            /** Unauthorized  */
            case failure401(ResponseError)

            /** Customer or Device not Found */
            case failure404(ResponseError)

            /** Device was Logged Out or the customer not longer exists */
            case failure410(ResponseError)

            public var success: DeviceObject? {
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
                case .failure410(let response): return response
                default: return nil
                }
            }

            /// either success or failure value. Success is anything in the 200..<300 status code range
            public var responseResult: APIResponseResult<DeviceObject, ResponseError> {
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
                case .failure410(let response): return response
                }
            }

            public var statusCode: Int {
              switch self {
              case .success200: return 200
              case .failure400: return 400
              case .failure401: return 401
              case .failure404: return 404
              case .failure410: return 410
              }
            }

            public var successful: Bool {
              switch self {
              case .success200: return true
              case .failure400: return false
              case .failure401: return false
              case .failure404: return false
              case .failure410: return false
              }
            }

            public init(statusCode: Int, data: Data) throws {
                switch statusCode {
                case 200: self = try .success200(JSONDecoder.decode(data: data))
                case 400: self = try .failure400(JSONDecoder.decode(data: data))
                case 401: self = try .failure401(JSONDecoder.decode(data: data))
                case 404: self = try .failure404(JSONDecoder.decode(data: data))
                case 410: self = try .failure410(JSONDecoder.decode(data: data))
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
