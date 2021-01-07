//
// MonthlyData.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation


public struct MonthlyData: Codable {

    public var monthNumber: Int
    public var reportingMonth: Date
    public var description: String?
    public var newTargetDate: Date

    public init(monthNumber: Int, reportingMonth: Date, description: String? = nil, newTargetDate: Date) {
        self.monthNumber = monthNumber
        self.reportingMonth = reportingMonth
        self.description = description
        self.newTargetDate = newTargetDate
    }

    public enum CodingKeys: String, CodingKey, CaseIterable { 
        case monthNumber = "month_number"
        case reportingMonth = "reporting_month"
        case description
        case newTargetDate = "new_target_date"
    }

}

