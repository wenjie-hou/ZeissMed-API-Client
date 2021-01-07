//
// Region.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation


public struct Region: Codable {

    public enum Status: String, Codable, CaseIterable {
        case red = "red"
        case green = "green"
        case yellow = "yellow"
    }
    public var id: Int?
    public var name: String
    public var sapNumber: String
    public var status: Status?
    public var startOfReportingPeriod: Date
    public var challenges: [Challenge]?
    public var ongoingActivities: [Activity]?
    public var regionProducts: [RegionProductWithProductName]?
    public var manager: ManagerSimplified?

    public init(id: Int? = nil, name: String, sapNumber: String, status: Status? = nil, startOfReportingPeriod: Date, challenges: [Challenge]? = nil, ongoingActivities: [Activity]? = nil, regionProducts: [RegionProductWithProductName]? = nil, manager: ManagerSimplified? = nil) {
        self.id = id
        self.name = name
        self.sapNumber = sapNumber
        self.status = status
        self.startOfReportingPeriod = startOfReportingPeriod
        self.challenges = challenges
        self.ongoingActivities = ongoingActivities
        self.regionProducts = regionProducts
        self.manager = manager
    }

    public enum CodingKeys: String, CodingKey, CaseIterable { 
        case id
        case name
        case sapNumber = "sap_number"
        case status
        case startOfReportingPeriod = "start_of_reporting_period"
        case challenges
        case ongoingActivities = "ongoing_activities"
        case regionProducts = "region_products"
        case manager
    }

}

