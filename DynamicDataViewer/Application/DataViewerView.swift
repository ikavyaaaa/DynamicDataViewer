//
//  DataViewerView.swift
//  DynamicDataViewer
//
//  Created by Kavya Krishna on 08/04/25.
//


import SwiftUI

protocol DataFetchable: Identifiable {
    static var title: String { get }
    static func fetchData() -> [Self]
}

extension DevicesList: DataFetchable {
    static var title: String { "Devices" }

    static func fetchData() -> [DevicesList] {
        let response: BaseResponse<DeviceModel>? = JSONLoader.load("devices", type: BaseResponse<DeviceModel>.self)
        return response?.data?.devices ?? []
    }
}

extension Doors: DataFetchable {
    static var title: String { "Doors" }

    static func fetchData() -> [Doors] {
        let response: BaseResponse<DoorModel>? = JSONLoader.load("doors", type: BaseResponse<DoorModel>.self)
        return response?.data?.doors ?? []
    }
}

extension ScheduleTimeZone: DataFetchable {
    static var title: String { "Schedules" }

    static func fetchData() -> [ScheduleTimeZone] {
        let response: BaseResponse<ScheduleModel>? = JSONLoader.load("schedules", type: BaseResponse<ScheduleModel>.self)
        return response?.data?.timeZone ?? []
    }
}

extension Site: DataFetchable {
    static var title: String { "Sites" }

    static func fetchData() -> [Site] {
        let response: SiteResponse? = JSONLoader.load("sites", type: SiteResponse.self)
        return response?.data?.sites ?? []
    }
}

struct DataViewerView<T: DataFetchable>: View {
    let title: String
    @State private var data: [T] = []

    var body: some View {
        List(data) { item in
            ForEach(reflect(item), id: \.0) { key, value in
                HStack(alignment: .top) {
                    Text("\(key):")
                        .bold()
                        .frame(width: 100, alignment: .leading)
                    Text("\(value)")
                        .multilineTextAlignment(.leading)
                }
            }
        }
        .navigationTitle(title)
        .onAppear {
            data = T.fetchData()
        }
    }

    private func reflect(_ item: T) -> [(String, String)] {
        if let dict = item as? [String: Any?] {
            return dict.map { key, value in
                let valueStr = value.map { String(describing: $0) } ?? "nil"
                return (key, valueStr)
            }
        } else {
            return Mirror(reflecting: item).children.compactMap { child in
                guard let label = child.label else { return nil }
                let valueStr = unwrap(child.value).map { String(describing: $0) } ?? "nil"
                return (label, valueStr)
            }
        }
    }
    
    private func unwrap(_ any: Any) -> Any? {
        let mirror = Mirror(reflecting: any)
        if mirror.displayStyle != .optional {
            return any
        }
        if let first = mirror.children.first {
            return first.value
        }
        return nil
    }

}
