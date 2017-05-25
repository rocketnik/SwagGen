//
// Generated by SwagGen
// https://github.com/yonaskolb/SwagGen
//

import Foundation
import JSONUtilities

public class DisambiguationOption: JSONDecodable, JSONEncodable, PrettyPrintable {

    public var description: String?

    public var uri: String?

    public init(description: String? = nil, uri: String? = nil) {
        self.description = description
        self.uri = uri
    }

    public required init(jsonDictionary: JSONDictionary) throws {
        description = jsonDictionary.json(atKeyPath: "description")
        uri = jsonDictionary.json(atKeyPath: "uri")
    }

    public func encode() -> JSONDictionary {
        var dictionary: JSONDictionary = [:]
        if let description = description {
            dictionary["description"] = description
        }
        if let uri = uri {
            dictionary["uri"] = uri
        }
        return dictionary
    }

    /// pretty prints all properties including nested models
    public var prettyPrinted: String {
        return "\(type(of: self)):\n\(encode().recursivePrint(indentIndex: 1))"
    }
}
