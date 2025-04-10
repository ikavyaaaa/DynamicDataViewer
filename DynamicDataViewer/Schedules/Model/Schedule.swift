//
//  ScheduleModel.swift
//  DynamicDataViewer
//
//  Created by Kavya Krishna on 08/04/25.
//

import Foundation

struct ScheduleModel: Codable {
    let totalCount: Int?
    let totalPages: Int?
    let currentPage: Int?
    let pageSize: Int?
    let timeZone: [ScheduleTimeZone]?

    enum CodingKeys: String, CodingKey {
        case totalCount
        case totalPages
        case currentPage
        case pageSize
        case timeZone
    }

    init(from decoder: Decoder) throws {
        let values = try decoder.container(keyedBy: CodingKeys.self)
        totalCount = try values.decodeIfPresent(Int.self, forKey: .totalCount)
        totalPages = try values.decodeIfPresent(Int.self, forKey: .totalPages)
        currentPage = try values.decodeIfPresent(Int.self, forKey: .currentPage)
        pageSize = try values.decodeIfPresent(Int.self, forKey: .pageSize)
        timeZone = try values.decodeIfPresent([ScheduleTimeZone].self, forKey: .timeZone)
    }
}

struct ScheduleTimeZone: Codable, Identifiable {
    let scheduleId: String?
    let companyId: String?
    let operationName: String?
    let remark: String?
    let operationNum: Int?
    let operationDetails: [OperationDetails]?

    var id: String {
        scheduleId ?? UUID().uuidString
    }

    enum CodingKeys: String, CodingKey {
        case scheduleId = "id"
        case companyId, operationName, remark, operationNum, operationDetails
    }
}

struct OperationDetails: Codable {
    let id: String?
    let intervals: Int?
    let type: Int?
    let startTime: String?
    let endTime: String?
    let createdAt: String?
    let updateAt: String?

    enum CodingKeys: String, CodingKey {
        case id
        case intervals
        case type
        case startTime
        case endTime
        case createdAt
        case updateAt
    }

    init(from decoder: Decoder) throws {
        let values = try decoder.container(keyedBy: CodingKeys.self)
        id = try values.decodeIfPresent(String.self, forKey: .id)
        intervals = try values.decodeIfPresent(Int.self, forKey: .intervals)
        type = try values.decodeIfPresent(Int.self, forKey: .type)
        startTime = try values.decodeIfPresent(String.self, forKey: .startTime)
        endTime = try values.decodeIfPresent(String.self, forKey: .endTime)
        createdAt = try values.decodeIfPresent(String.self, forKey: .createdAt)
        updateAt = try values.decodeIfPresent(String.self, forKey: .updateAt)
    }
}
