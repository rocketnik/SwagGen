//
// Generated by SwagGen
// https://github.com/yonaskolb/SwagGen
//

import Foundation
import JSONUtilities

public class AdditionalProperties: JSONDecodable, JSONEncodable, PrettyPrintable {

    public var category: String?

    public var key: String?

    public var modified: Date?

    public var sourceSystemKey: String?

    public var value: String?

    public init(category: String? = nil, key: String? = nil, modified: Date? = nil, sourceSystemKey: String? = nil, value: String? = nil) {
        self.category = category
        self.key = key
        self.modified = modified
        self.sourceSystemKey = sourceSystemKey
        self.value = value
    }

    public required init(jsonDictionary: JSONDictionary) throws {
        category = jsonDictionary.json(atKeyPath: "category")
        key = jsonDictionary.json(atKeyPath: "key")
        modified = jsonDictionary.json(atKeyPath: "modified")
        sourceSystemKey = jsonDictionary.json(atKeyPath: "sourceSystemKey")
        value = jsonDictionary.json(atKeyPath: "value")
    }

    public func encode() -> JSONDictionary {
        var dictionary: JSONDictionary = [:]
        if let category = category {
            dictionary["category"] = category
        }
        if let key = key {
            dictionary["key"] = key
        }
        if let modified = modified?.encode() {
            dictionary["modified"] = modified
        }
        if let sourceSystemKey = sourceSystemKey {
            dictionary["sourceSystemKey"] = sourceSystemKey
        }
        if let value = value {
            dictionary["value"] = value
        }
        return dictionary
    }

    /// pretty prints all properties including nested models
    public var prettyPrinted: String {
        return "\(type(of: self)):\n\(encode().recursivePrint(indentIndex: 1))"
    }
}
