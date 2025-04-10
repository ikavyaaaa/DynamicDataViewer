//
//  SiteModel.swift
//  DynamicDataViewer
//
//  Created by Kavya Krishna on 08/04/25.
//

import Foundation

struct SiteResponse: Codable {
    let code: String?
    let message: String?
    let data: SiteModel?
}

struct SiteModel: Codable {
    let totalCount: Int?
    let totalPages: Int?
    let currentPage: Int?
    let pageSize: Int?
    let sites: [Site]?
    
    enum CodingKeys: String, CodingKey {
        case totalCount
        case totalPages
        case currentPage
        case pageSize
        case sites
    }
    
    init(from decoder: Decoder) throws {
        let values = try decoder.container(keyedBy: CodingKeys.self)
        totalCount = try values.decodeIfPresent(Int.self, forKey: .totalCount)
        totalPages = try values.decodeIfPresent(Int.self, forKey: .totalPages)
        currentPage = try values.decodeIfPresent(Int.self, forKey: .currentPage)
        pageSize = try values.decodeIfPresent(Int.self, forKey: .pageSize)
        sites = try values.decodeIfPresent([Site].self, forKey: .sites)
    }
}

struct Site: Codable, Identifiable, Hashable {
    let id: String?
    let name: String?
    let code: String?
    let description: String?
    let companyId: String?
    let parentId: String?
    let siteTypeId: String?
    let addressId: String?
    let createdAt: String?
    let updateAt: String?
    let deviceCount: String?
    let timeZone: String?
    let dst: String?

    enum CodingKeys: String, CodingKey {
        case id
        case name
        case code
        case description
        case companyId
        case parentId
        case siteTypeId
        case addressId
        case createdAt
        case updateAt
        case deviceCount
        case timeZone
        case dst
    }

    init(from decoder: Decoder) throws {
        let values = try decoder.container(keyedBy: CodingKeys.self)
        id = try values.decodeIfPresent(String.self, forKey: .id)
        name = try values.decodeIfPresent(String.self, forKey: .name)
        code = try values.decodeIfPresent(String.self, forKey: .code)
        description = try values.decodeIfPresent(String.self, forKey: .description)
        companyId = try values.decodeIfPresent(String.self, forKey: .companyId)
        parentId = try values.decodeIfPresent(String.self, forKey: .parentId)
        siteTypeId = try values.decodeIfPresent(String.self, forKey: .siteTypeId)
        addressId = try values.decodeIfPresent(String.self, forKey: .addressId)
        createdAt = try values.decodeIfPresent(String.self, forKey: .createdAt)
        updateAt = try values.decodeIfPresent(String.self, forKey: .updateAt)
        deviceCount = try values.decodeIfPresent(String.self, forKey: .deviceCount)
        timeZone = try values.decodeIfPresent(String.self, forKey: .timeZone)
        dst = try values.decodeIfPresent(String.self, forKey: .dst)
    }
}
