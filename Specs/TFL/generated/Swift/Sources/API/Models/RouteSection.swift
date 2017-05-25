//
// Generated by SwagGen
// https://github.com/yonaskolb/SwagGen
//

import Foundation
import JSONUtilities

public class RouteSection: JSONDecodable, JSONEncodable, PrettyPrintable {

    /** eg: Destination Name */
    public var destinationName: String?

    /** eg: N or S or I or O */
    public var direction: String?

    /** The Id of the route */
    public var id: String?

    /** The Id of the Line */
    public var lineId: String?

    /** eg: Path coordindates */
    public var lineString: String?

    /** Name such as "72" */
    public var name: String?

    /** eg: Origination Name */
    public var originationName: String?

    /** The route code */
    public var routeCode: String?

    public var routeSectionNaptanEntrySequence: [RouteSectionNaptanEntrySequence]?

    public init(destinationName: String? = nil, direction: String? = nil, id: String? = nil, lineId: String? = nil, lineString: String? = nil, name: String? = nil, originationName: String? = nil, routeCode: String? = nil, routeSectionNaptanEntrySequence: [RouteSectionNaptanEntrySequence]? = nil) {
        self.destinationName = destinationName
        self.direction = direction
        self.id = id
        self.lineId = lineId
        self.lineString = lineString
        self.name = name
        self.originationName = originationName
        self.routeCode = routeCode
        self.routeSectionNaptanEntrySequence = routeSectionNaptanEntrySequence
    }

    public required init(jsonDictionary: JSONDictionary) throws {
        destinationName = jsonDictionary.json(atKeyPath: "destinationName")
        direction = jsonDictionary.json(atKeyPath: "direction")
        id = jsonDictionary.json(atKeyPath: "id")
        lineId = jsonDictionary.json(atKeyPath: "lineId")
        lineString = jsonDictionary.json(atKeyPath: "lineString")
        name = jsonDictionary.json(atKeyPath: "name")
        originationName = jsonDictionary.json(atKeyPath: "originationName")
        routeCode = jsonDictionary.json(atKeyPath: "routeCode")
        routeSectionNaptanEntrySequence = jsonDictionary.json(atKeyPath: "routeSectionNaptanEntrySequence")
    }

    public func encode() -> JSONDictionary {
        var dictionary: JSONDictionary = [:]
        if let destinationName = destinationName {
            dictionary["destinationName"] = destinationName
        }
        if let direction = direction {
            dictionary["direction"] = direction
        }
        if let id = id {
            dictionary["id"] = id
        }
        if let lineId = lineId {
            dictionary["lineId"] = lineId
        }
        if let lineString = lineString {
            dictionary["lineString"] = lineString
        }
        if let name = name {
            dictionary["name"] = name
        }
        if let originationName = originationName {
            dictionary["originationName"] = originationName
        }
        if let routeCode = routeCode {
            dictionary["routeCode"] = routeCode
        }
        if let routeSectionNaptanEntrySequence = routeSectionNaptanEntrySequence?.encode() {
            dictionary["routeSectionNaptanEntrySequence"] = routeSectionNaptanEntrySequence
        }
        return dictionary
    }

    /// pretty prints all properties including nested models
    public var prettyPrinted: String {
        return "\(type(of: self)):\n\(encode().recursivePrint(indentIndex: 1))"
    }
}
