//
//  Devices.swift
//  DynamicDataViewer
//
//  Created by Kavya Krishna on 08/04/25.
//

import Foundation

struct BaseResponse<T: Codable>: Codable {
    let code: String?
    let data: T?
    let mid: String?
    
    init(from decoder: Decoder) throws {
        let values = try decoder.container(keyedBy: CodingKeys.self)
        code = try values.decodeIfPresent(String.self, forKey: .code)
        data = try values.decodeIfPresent(T.self, forKey: .data)
        mid = try values.decodeIfPresent(String.self, forKey: .mid)
    }
}

struct DeviceModel: Codable {
    let devices: [DevicesList]?
    let totalPages: Int?
    let totalCount: Int?
    let currentPage: Int?
    
    enum CodingKeys: String, CodingKey {
        case devices
        case totalPages
        case totalCount
        case currentPage
    }
    
    init(from decoder: Decoder) throws {
        let values = try decoder.container(keyedBy: CodingKeys.self)
        devices = try values.decodeIfPresent([DevicesList].self, forKey: .devices)
        totalPages = try values.decodeIfPresent(Int.self, forKey: .totalPages)
        totalCount = try values.decodeIfPresent(Int.self, forKey: .totalCount)
        currentPage = try values.decodeIfPresent(Int.self, forKey: .currentPage)
    }
}

struct DevicesList: Codable, Identifiable {
    let id: String?
    var snk: String?
    let mac: String?
    let deviceType: String?
    let fwVersion: String?
    let deviceAlias: String?
    let initialState: Int?
    let deviceModel: String?
    let siteId: String?
    let ipk: String?
    let timeZone: String?
    let zoneId: String?
    let status: Int?
    let protocolType: String?
    let clientId: String?
    let registrationDevice: Bool?
    let checkIn: Bool?
    let checkOut: Bool?
    let enable: Bool?
    let createdAt: String?
    let updatedAt: String?
    let dbsId: String?
    let parameter: Parameter?
    let companyId: String?
    let machineType: Int?
    let lockCount: Int?
    let verifyStyles: String?
    let accSupportFunlist: String?
    let siteName: String?
    
    enum CodingKeys: String, CodingKey {
        case id = "id"
        case snk = "sn"
        case mac = "mac"
        case deviceType = "deviceType"
        case fwVersion = "fwVersion"
        case deviceAlias = "deviceAlias"
        case initialState = "initialState"
        case deviceModel = "deviceModel"
        case siteId = "siteId"
        case ipk = "ip"
        case timeZone = "timeZone"
        case zoneId = "zoneId"
        case status = "status"
        case protocolType = "protocolType"
        case clientId = "clientId"
        case registrationDevice = "registrationDevice"
        case checkIn = "checkIn"
        case checkOut = "checkOut"
        case enable = "enable"
        case createdAt = "createdAt"
        case updatedAt = "updatedAt"
        case dbsId = "dbsId"
        case parameter = "parameters"
        case companyId = "companyId"
        case machineType = "machineType"
        case lockCount = "lockCount"
        case verifyStyles = "verifyStyles"
        case accSupportFunlist = "accSupportFunlist"
        case siteName = "siteName"
    }
    
    init(from decoder: Decoder) throws {
        let values = try decoder.container(keyedBy: CodingKeys.self)
        id = try values.decodeIfPresent(String.self, forKey: .id)
        snk = try values.decodeIfPresent(String.self, forKey: .snk)
        mac = try values.decodeIfPresent(String.self, forKey: .mac)
        deviceType = try values.decodeIfPresent(String.self, forKey: .deviceType)
        fwVersion = try values.decodeIfPresent(String.self, forKey: .fwVersion)
        deviceAlias = try values.decodeIfPresent(String.self, forKey: .deviceAlias)
        initialState = try values.decodeIfPresent(Int.self, forKey: .initialState)
        deviceModel = try values.decodeIfPresent(String.self, forKey: .deviceModel)
        siteId = try values.decodeIfPresent(String.self, forKey: .siteId)
        ipk = try values.decodeIfPresent(String.self, forKey: .ipk)
        timeZone = try values.decodeIfPresent(String.self, forKey: .timeZone)
        zoneId = try values.decodeIfPresent(String.self, forKey: .zoneId)
        status = try values.decodeIfPresent(Int.self, forKey: .status)
        protocolType = try values.decodeIfPresent(String.self, forKey: .protocolType)
        clientId = try values.decodeIfPresent(String.self, forKey: .clientId)
        registrationDevice = try values.decodeIfPresent(Bool.self, forKey: .registrationDevice)
        checkIn = try values.decodeIfPresent(Bool.self, forKey: .checkIn)
        checkOut = try values.decodeIfPresent(Bool.self, forKey: .checkOut)
        enable = try values.decodeIfPresent(Bool.self, forKey: .enable)
        createdAt = try values.decodeIfPresent(String.self, forKey: .createdAt)
        updatedAt = try values.decodeIfPresent(String.self, forKey: .updatedAt)
        dbsId = try values.decodeIfPresent(String.self, forKey: .dbsId)
        parameter = try values.decodeIfPresent(Parameter.self, forKey: .parameter)
        companyId = try values.decodeIfPresent(String.self, forKey: .companyId)
        machineType = try values.decodeIfPresent(Int.self, forKey: .machineType)
        lockCount = try values.decodeIfPresent(Int.self, forKey: .lockCount)
        verifyStyles = try values.decodeIfPresent(String.self, forKey: .verifyStyles)
        accSupportFunlist = try values.decodeIfPresent(String.self, forKey: .accSupportFunlist)
        siteName = try values.decodeIfPresent(String.self, forKey: .siteName)
    }
}
struct Parameter: Codable {
    let cardFormatFunOn: String?
    let disableUserFunOn: String?
    let rEXInputFunOn: String?
    let isOnlyRFMachine: String?
    let transInterval: String?
    let lossCardFunOn: String?
    let ipPort: String?
    let token: String?
    let readerCount: String?
    let netMask: String?
    let delayOpenDoorFunOn: String?
    let cardSiteCodeFunOn: String?
    let userNameFunOn: String?
    let mulCardUserFunOn: String?
    let gATEIPAddress: String?
    let netConnectMode: String?
    let supAuthrizeFunOn: String?
    let auxInCount: String?
    let userOpenDoorDelayFunOn: String?
    let ext485ReaderFunOn: String?
    let stringPinFunOn: String?
    let timeoutSec: String?
    let maxMCUCardBits: String?
    let requestDelay: String?
    let dateFmtFunOn: String?
    let simpleEventType: String?
    let multiCardInterTimeFunOn: String?
    let autoServerFunOn: String?
    let verifyStyles: String?
    let errorDelay: String?
    let realtime: String?
    let deviceType: String?
    let accSupportFunList: String?
    let maxPackageSize: String?
    let ctlAllRelayFunOn: String?
    let transTables: String?
    let maxUserCount: String?
    let serialNumber: String?
    let sessionID: String?
    let zKFPVersion: String?
    let serverVersion: String?
    let dSTFunOn: String?
    let outRelaySetFunOn: String?
    let maxAttLogCount: String?
    let maxFingerCount: String?
    let accSupportUSAFunList: String?
    let deleteAndFunOn: String?
    let enabled: String?
    let pushVersion: String?
    let readerCFGFunOn: String?
    let machineTZFunOn: String?
    let delAllLossCardFunOn: String?
    let maxUserFingerCount: String?
    let sNp: String?
    let timeAPBFunOn: String?
    let authKey: String?
    let relayStateFunOn: String?
    let auxOutCount: String?
    let machineType: String?
    let logIDFunOn: String?
    let commType: String?
    let deviceID: String?
    let deviceName: String?
    let lockCount: String?
    let mThreshold: String?
    let qRCodeDecryptFunList: String?
    let registryCode: String?
    let serverName: String?
    let eventTypes: String?
    let readerLinkageFunOn: String?
    let iPAddress: String?
    let transTimes: String?
    let firmVer: String?
    enum CodingKeys: String, CodingKey {
        case cardFormatFunOn = "~CardFormatFunOn"
        case disableUserFunOn = "DisableUserFunOn"
        case rEXInputFunOn = "~REXInputFunOn"
        case isOnlyRFMachine = "~IsOnlyRFMachine"
        case transInterval = "TransInterval"
        case lossCardFunOn = "~LossCardFunOn"
        case ipPort = "IpPort"
        case token = "Token"
        case readerCount = "ReaderCount"
        case netMask = "NetMask"
        case delayOpenDoorFunOn = "DelayOpenDoorFunOn"
        case cardSiteCodeFunOn = "CardSiteCodeFunOn"
        case userNameFunOn = "UserNameFunOn"
        case mulCardUserFunOn = "MulCardUserFunOn"
        case gATEIPAddress = "GATEIPAddress"
        case netConnectMode = "NetConnectMode"
        case supAuthrizeFunOn = "~SupAuthrizeFunOn"
        case auxInCount = "AuxInCount"
        case userOpenDoorDelayFunOn = "UserOpenDoorDelayFunOn"
        case ext485ReaderFunOn = "~Ext485ReaderFunOn"
        case stringPinFunOn = "StringPinFunOn"
        case timeoutSec = "TimeoutSec"
        case maxMCUCardBits = "MaxMCUCardBits"
        case requestDelay = "RequestDelay"
        case dateFmtFunOn = "DateFmtFunOn"
        case simpleEventType = "SimpleEventType"
        case multiCardInterTimeFunOn = "MultiCardInterTimeFunOn"
        case autoServerFunOn = "AutoServerFunOn"
        case verifyStyles = "VerifyStyles"
        case errorDelay = "ErrorDelay"
        case realtime = "Realtime"
        case deviceType = "DeviceType"
        case accSupportFunList = "AccSupportFunList"
        case maxPackageSize = "MaxPackageSize"
        case ctlAllRelayFunOn = "~CtlAllRelayFunOn"
        case transTables = "TransTables"
        case maxUserCount = "~MaxUserCount"
        case serialNumber = "~SerialNumber"
        case sessionID = "SessionID"
        case zKFPVersion = "~ZKFPVersion"
        case serverVersion = "ServerVersion"
        case dSTFunOn = "DSTFunOn"
        case outRelaySetFunOn = "OutRelaySetFunOn"
        case maxAttLogCount = "~MaxAttLogCount"
        case maxFingerCount = "~MaxFingerCount"
        case accSupportUSAFunList = "AccSupportUSAFunList"
        case deleteAndFunOn = "DeleteAndFunOn"
        case enabled = "enabled"
        case pushVersion = "PushVersion"
        case readerCFGFunOn = "~ReaderCFGFunOn"
        case machineTZFunOn = "MachineTZFunOn"
        case delAllLossCardFunOn = "DelAllLossCardFunOn"
        case maxUserFingerCount = "~MaxUserFingerCount"
        case sNp = "SN"
        case timeAPBFunOn = "~TimeAPBFunOn"
        case authKey = "authKey"
        case relayStateFunOn = "~RelayStateFunOn"
        case auxOutCount = "AuxOutCount"
        case machineType = "MachineType"
        case logIDFunOn = "LogIDFunOn"
        case commType = "CommType"
        case deviceID = "deviceID"
        case deviceName = "~DeviceName"
        case lockCount = "LockCount"
        case mThreshold = "MThreshold"
        case qRCodeDecryptFunList = "QRCodeDecryptFunList"
        case registryCode = "registryCode"
        case serverName = "ServerName"
        case eventTypes = "EventTypes"
        case readerLinkageFunOn = "~ReaderLinkageFunOn"
        case iPAddress = "IPAddress"
        case transTimes = "TransTimes"
        case firmVer = "FirmVer"
    }
    init(from decoder: Decoder) throws {
        let values = try decoder.container(keyedBy: CodingKeys.self)
        cardFormatFunOn = try values.decodeIfPresent(String.self, forKey: .cardFormatFunOn)
        disableUserFunOn = try values.decodeIfPresent(String.self, forKey: .disableUserFunOn)
        rEXInputFunOn = try values.decodeIfPresent(String.self, forKey: .rEXInputFunOn)
        isOnlyRFMachine = try values.decodeIfPresent(String.self, forKey: .isOnlyRFMachine)
        transInterval = try values.decodeIfPresent(String.self, forKey: .transInterval)
        lossCardFunOn = try values.decodeIfPresent(String.self, forKey: .lossCardFunOn)
        ipPort = try values.decodeIfPresent(String.self, forKey: .ipPort)
        token = try values.decodeIfPresent(String.self, forKey: .token)
        readerCount = try values.decodeIfPresent(String.self, forKey: .readerCount)
        netMask = try values.decodeIfPresent(String.self, forKey: .netMask)
        delayOpenDoorFunOn = try values.decodeIfPresent(String.self, forKey: .delayOpenDoorFunOn)
        cardSiteCodeFunOn = try values.decodeIfPresent(String.self, forKey: .cardSiteCodeFunOn)
        userNameFunOn = try values.decodeIfPresent(String.self, forKey: .userNameFunOn)
        mulCardUserFunOn = try values.decodeIfPresent(String.self, forKey: .mulCardUserFunOn)
        gATEIPAddress = try values.decodeIfPresent(String.self, forKey: .gATEIPAddress)
        netConnectMode = try values.decodeIfPresent(String.self, forKey: .netConnectMode)
        supAuthrizeFunOn = try values.decodeIfPresent(String.self, forKey: .supAuthrizeFunOn)
        auxInCount = try values.decodeIfPresent(String.self, forKey: .auxInCount)
        userOpenDoorDelayFunOn = try values.decodeIfPresent(String.self, forKey: .userOpenDoorDelayFunOn)
        ext485ReaderFunOn = try values.decodeIfPresent(String.self, forKey: .ext485ReaderFunOn)
        stringPinFunOn = try values.decodeIfPresent(String.self, forKey: .stringPinFunOn)
        timeoutSec = try values.decodeIfPresent(String.self, forKey: .timeoutSec)
        maxMCUCardBits = try values.decodeIfPresent(String.self, forKey: .maxMCUCardBits)
        requestDelay = try values.decodeIfPresent(String.self, forKey: .requestDelay)
        dateFmtFunOn = try values.decodeIfPresent(String.self, forKey: .dateFmtFunOn)
        simpleEventType = try values.decodeIfPresent(String.self, forKey: .simpleEventType)
        multiCardInterTimeFunOn = try values.decodeIfPresent(String.self, forKey: .multiCardInterTimeFunOn)
        autoServerFunOn = try values.decodeIfPresent(String.self, forKey: .autoServerFunOn)
        verifyStyles = try values.decodeIfPresent(String.self, forKey: .verifyStyles)
        errorDelay = try values.decodeIfPresent(String.self, forKey: .errorDelay)
        realtime = try values.decodeIfPresent(String.self, forKey: .realtime)
        deviceType = try values.decodeIfPresent(String.self, forKey: .deviceType)
        accSupportFunList = try values.decodeIfPresent(String.self, forKey: .accSupportFunList)
        maxPackageSize = try values.decodeIfPresent(String.self, forKey: .maxPackageSize)
        ctlAllRelayFunOn = try values.decodeIfPresent(String.self, forKey: .ctlAllRelayFunOn)
        transTables = try values.decodeIfPresent(String.self, forKey: .transTables)
        maxUserCount = try values.decodeIfPresent(String.self, forKey: .maxUserCount)
        serialNumber = try values.decodeIfPresent(String.self, forKey: .serialNumber)
        sessionID = try values.decodeIfPresent(String.self, forKey: .sessionID)
        zKFPVersion = try values.decodeIfPresent(String.self, forKey: .zKFPVersion)
        serverVersion = try values.decodeIfPresent(String.self, forKey: .serverVersion)
        dSTFunOn = try values.decodeIfPresent(String.self, forKey: .dSTFunOn)
        outRelaySetFunOn = try values.decodeIfPresent(String.self, forKey: .outRelaySetFunOn)
        maxAttLogCount = try values.decodeIfPresent(String.self, forKey: .maxAttLogCount)
        maxFingerCount = try values.decodeIfPresent(String.self, forKey: .maxFingerCount)
        accSupportUSAFunList = try values.decodeIfPresent(String.self, forKey: .accSupportUSAFunList)
        deleteAndFunOn = try values.decodeIfPresent(String.self, forKey: .deleteAndFunOn)
        enabled = try values.decodeIfPresent(String.self, forKey: .enabled)
        pushVersion = try values.decodeIfPresent(String.self, forKey: .pushVersion)
        readerCFGFunOn = try values.decodeIfPresent(String.self, forKey: .readerCFGFunOn)
        machineTZFunOn = try values.decodeIfPresent(String.self, forKey: .machineTZFunOn)
        delAllLossCardFunOn = try values.decodeIfPresent(String.self, forKey: .delAllLossCardFunOn)
        maxUserFingerCount = try values.decodeIfPresent(String.self, forKey: .maxUserFingerCount)
        sNp = try values.decodeIfPresent(String.self, forKey: .sNp)
        timeAPBFunOn = try values.decodeIfPresent(String.self, forKey: .timeAPBFunOn)
        authKey = try values.decodeIfPresent(String.self, forKey: .authKey)
        relayStateFunOn = try values.decodeIfPresent(String.self, forKey: .relayStateFunOn)
        auxOutCount = try values.decodeIfPresent(String.self, forKey: .auxOutCount)
        machineType = try values.decodeIfPresent(String.self, forKey: .machineType)
        logIDFunOn = try values.decodeIfPresent(String.self, forKey: .logIDFunOn)
        commType = try values.decodeIfPresent(String.self, forKey: .commType)
        deviceID = try values.decodeIfPresent(String.self, forKey: .deviceID)
        deviceName = try values.decodeIfPresent(String.self, forKey: .deviceName)
        lockCount = try values.decodeIfPresent(String.self, forKey: .lockCount)
        mThreshold = try values.decodeIfPresent(String.self, forKey: .mThreshold)
        qRCodeDecryptFunList = try values.decodeIfPresent(String.self, forKey: .qRCodeDecryptFunList)
        registryCode = try values.decodeIfPresent(String.self, forKey: .registryCode)
        serverName = try values.decodeIfPresent(String.self, forKey: .serverName)
        eventTypes = try values.decodeIfPresent(String.self, forKey: .eventTypes)
        readerLinkageFunOn = try values.decodeIfPresent(String.self, forKey: .readerLinkageFunOn)
        iPAddress = try values.decodeIfPresent(String.self, forKey: .iPAddress)
        transTimes = try values.decodeIfPresent(String.self, forKey: .transTimes)
        firmVer = try values.decodeIfPresent(String.self, forKey: .firmVer)
    }
}
