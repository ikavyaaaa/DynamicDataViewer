//
//  DevicesVM.swift
//  DynamicDataViewer
//
//  Created by Kavya Krishna on 08/04/25.
//

import Foundation

class DevicesVM: ObservableObject {
    @Published var devices: [DeviceModel] = []

    init() {
        loadDeviceData()
    }

    private func loadDeviceData() {
        if let loadedData: [DeviceModel] = JSONLoader.load("devices", type: [DeviceModel].self) {
            self.devices = loadedData
        }
    }
}
