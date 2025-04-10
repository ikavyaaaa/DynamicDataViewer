//
//  ContentView.swift
//  DynamicDataViewer
//
//  Created by Kavya Krishna on 08/04/25.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        NavigationView {
            VStack(spacing: 16) {
                NavigationLink("Devices") {
                    DataViewerView<DevicesList>(title: "Devices")
                }
                .buttonStyle(FilledButtonStyle())
                
                NavigationLink("Doors") {
                    DataViewerView<Doors>(title: "Doors")
                }
                .buttonStyle(FilledButtonStyle())
                
                NavigationLink("Schedules") {
                    DataViewerView<ScheduleTimeZone>(title: "Schedules")
                }
                .buttonStyle(FilledButtonStyle())
                
                NavigationLink("Sites") {
                    DataViewerView<Site>(title: "Sites")
                }
                .buttonStyle(FilledButtonStyle())
                Spacer()
            }
            .padding()
            .navigationBarTitle("Data Viewer", displayMode: .inline)
        }
    }
}

struct FilledButtonStyle: ButtonStyle {
    func makeBody(configuration: Configuration) -> some View {
        configuration.label
            .padding()
            .frame(maxWidth: .infinity)
            .background(Color.black.opacity(configuration.isPressed ? 0.7 : 1))
            .foregroundColor(.white)
            .cornerRadius(10)
    }
}

#Preview {
    ContentView()
}
