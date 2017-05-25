//
// Generated by SwagGen
// https://github.com/yonaskolb/SwagGen
//

import Foundation
import JSONUtilities

public class AccidentDetail: JSONDecodable, JSONEncodable, PrettyPrintable {

    public var borough: String?

    public var casualties: [Casualty]?

    public var date: Date?

    public var id: Int?

    public var lat: Double?

    public var location: String?

    public var lon: Double?

    public var severity: String?

    public var vehicles: [Vehicle]?

    public init(borough: String? = nil, casualties: [Casualty]? = nil, date: Date? = nil, id: Int? = nil, lat: Double? = nil, location: String? = nil, lon: Double? = nil, severity: String? = nil, vehicles: [Vehicle]? = nil) {
        self.borough = borough
        self.casualties = casualties
        self.date = date
        self.id = id
        self.lat = lat
        self.location = location
        self.lon = lon
        self.severity = severity
        self.vehicles = vehicles
    }

    public required init(jsonDictionary: JSONDictionary) throws {
        borough = jsonDictionary.json(atKeyPath: "borough")
        casualties = jsonDictionary.json(atKeyPath: "casualties")
        date = jsonDictionary.json(atKeyPath: "date")
        id = jsonDictionary.json(atKeyPath: "id")
        lat = jsonDictionary.json(atKeyPath: "lat")
        location = jsonDictionary.json(atKeyPath: "location")
        lon = jsonDictionary.json(atKeyPath: "lon")
        severity = jsonDictionary.json(atKeyPath: "severity")
        vehicles = jsonDictionary.json(atKeyPath: "vehicles")
    }

    public func encode() -> JSONDictionary {
        var dictionary: JSONDictionary = [:]
        if let borough = borough {
            dictionary["borough"] = borough
        }
        if let casualties = casualties?.encode() {
            dictionary["casualties"] = casualties
        }
        if let date = date?.encode() {
            dictionary["date"] = date
        }
        if let id = id {
            dictionary["id"] = id
        }
        if let lat = lat {
            dictionary["lat"] = lat
        }
        if let location = location {
            dictionary["location"] = location
        }
        if let lon = lon {
            dictionary["lon"] = lon
        }
        if let severity = severity {
            dictionary["severity"] = severity
        }
        if let vehicles = vehicles?.encode() {
            dictionary["vehicles"] = vehicles
        }
        return dictionary
    }

    /// pretty prints all properties including nested models
    public var prettyPrinted: String {
        return "\(type(of: self)):\n\(encode().recursivePrint(indentIndex: 1))"
    }
}
