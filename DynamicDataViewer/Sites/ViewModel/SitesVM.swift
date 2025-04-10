//
//
//  SitesVM.swift
//  DynamicDataViewer
//
//  Created by Kavya Krishna on 08/04/25.
//

import Foundation

class SitesVM: ObservableObject {
    @Published var sites: [Site] = []

    init() {
        loadData()
    }

    private func loadData() {
        if let siteResponse: SiteResponse = JSONLoader.load("sites", type: SiteResponse.self) {
            self.sites = siteResponse.data?.sites ?? []
        }
    }
}
