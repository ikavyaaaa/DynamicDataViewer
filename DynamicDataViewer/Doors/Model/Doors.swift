//
//  Doors.swift
//  DynamicDataViewer
//
//  Created by Kavya Krishna on 08/04/25.
//

import Foundation

struct DoorModel: Codable {
    let doors: [Doors]?
    
    enum CodingKeys: String, CodingKey {
        case doors
    }
    
    init(from decoder: Decoder) throws {
        let values = try decoder.container(keyedBy: CodingKeys.self)
        doors = try values.decodeIfPresent([Doors].self, forKey: .doors)
    }
}

struct Doors: Codable, Identifiable {
    let doorId: String?
    let doorName: String?
    let doorNo: String?
    let deviceId: String?
    let deviceName: String?
    let deviceModel: String?
    let status: Int?
    let deviceSn: String?
    let enable: Int?
    let siteId: String?
    let siteName: String?
    let activeTimeSegId: String?
    let activeTimeSegName: String?
    let verifyModeName: String?
    let machineType: String?
    let companyId: String?
    let createdAt: String?
    let updatedAt: String?
    let isFavorite: Bool?
    
    var id: String {
        doorId ?? UUID().uuidString
    }

    enum CodingKeys: String, CodingKey {
        case doorId, doorName, doorNo, deviceId, deviceName, deviceModel,
             status, deviceSn, enable, siteId, siteName,
             activeTimeSegId, activeTimeSegName, verifyModeName,
             machineType, companyId, createdAt, updatedAt, isFavorite
    }
}

