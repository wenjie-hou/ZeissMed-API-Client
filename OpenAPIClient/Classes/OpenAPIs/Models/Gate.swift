//
// Gate.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation


public struct Gate: Codable {

    public enum Status: String, Codable, CaseIterable {
        case red = "red"
        case green = "green"
        case yellow = "yellow"
    }
    public var id: Int
    public var description: String
    public var status: Status
    public var currentTargetDate: Date
    public var monthlyData: [MonthlyData]

    public init(id: Int, description: String, status: Status, currentTargetDate: Date, monthlyData: [MonthlyData]) {
        self.id = id
        self.description = description
        self.status = status
        self.currentTargetDate = currentTargetDate
        self.monthlyData = monthlyData
    }

    public enum CodingKeys: String, CodingKey, CaseIterable { 
        case id
        case description
        case status
        case currentTargetDate = "current_target_date"
        case monthlyData = "monthly_data"
    }

}

