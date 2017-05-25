//
// Generated by SwagGen
// https://github.com/yonaskolb/SwagGen
//

import Foundation
import JSONUtilities

public class SearchResponse: JSONDecodable, JSONEncodable, PrettyPrintable {

    public var from: Int?

    public var matches: [SearchMatch]?

    public var maxScore: Double?

    public var page: Int?

    public var pageSize: Int?

    public var provider: String?

    public var query: String?

    public var total: Int?

    public init(from: Int? = nil, matches: [SearchMatch]? = nil, maxScore: Double? = nil, page: Int? = nil, pageSize: Int? = nil, provider: String? = nil, query: String? = nil, total: Int? = nil) {
        self.from = from
        self.matches = matches
        self.maxScore = maxScore
        self.page = page
        self.pageSize = pageSize
        self.provider = provider
        self.query = query
        self.total = total
    }

    public required init(jsonDictionary: JSONDictionary) throws {
        from = jsonDictionary.json(atKeyPath: "from")
        matches = jsonDictionary.json(atKeyPath: "matches")
        maxScore = jsonDictionary.json(atKeyPath: "maxScore")
        page = jsonDictionary.json(atKeyPath: "page")
        pageSize = jsonDictionary.json(atKeyPath: "pageSize")
        provider = jsonDictionary.json(atKeyPath: "provider")
        query = jsonDictionary.json(atKeyPath: "query")
        total = jsonDictionary.json(atKeyPath: "total")
    }

    public func encode() -> JSONDictionary {
        var dictionary: JSONDictionary = [:]
        if let from = from {
            dictionary["from"] = from
        }
        if let matches = matches?.encode() {
            dictionary["matches"] = matches
        }
        if let maxScore = maxScore {
            dictionary["maxScore"] = maxScore
        }
        if let page = page {
            dictionary["page"] = page
        }
        if let pageSize = pageSize {
            dictionary["pageSize"] = pageSize
        }
        if let provider = provider {
            dictionary["provider"] = provider
        }
        if let query = query {
            dictionary["query"] = query
        }
        if let total = total {
            dictionary["total"] = total
        }
        return dictionary
    }

    /// pretty prints all properties including nested models
    public var prettyPrinted: String {
        return "\(type(of: self)):\n\(encode().recursivePrint(indentIndex: 1))"
    }
}
