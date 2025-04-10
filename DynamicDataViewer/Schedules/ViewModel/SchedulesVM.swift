//
//
//  SchedulesVM.swift
//  DynamicDataViewer
//
//  Created by Kavya Krishna on 08/04/25.
//

import Foundation

class SchedulesVM: ObservableObject {
    @Published var schedules: [ScheduleModel] = []

    init() {
        loadData()
    }

    private func loadData() {
        if let loadedData: [ScheduleModel] = JSONLoader.load("schedules", type: [ScheduleModel].self) {
            self.schedules = loadedData
        }
    }
}
