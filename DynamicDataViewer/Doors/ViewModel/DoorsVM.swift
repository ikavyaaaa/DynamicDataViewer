//
//
//  DoorsVM.swift
//  DynamicDataViewer
//
//  Created by Kavya Krishna on 08/04/25.
//

import Foundation

class DoorsVM: ObservableObject {
    @Published var doors: [DoorModel] = []

    init() {
        loadData()
    }

    private func loadData() {
        if let loadedData: [DoorModel] = JSONLoader.load("doors", type: [DoorModel].self) {
            self.doors = loadedData
        }
    }
}
