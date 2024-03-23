//
//  SettingsView.swift
//  VisionProPlayground
//
//  Created by Norbu Sonam on 3/13/24.
//

import SwiftUI

struct SettingPage: Identifiable {
    var id = UUID()
    var name: String
}

let pages = [SettingPage(name: "Profile"), SettingPage(name: "Appearance"), SettingPage(name: "Privacy")]

struct SettingsView: View {
    @State private var selectedPageId = pages.first?.id
    
    var body: some View {
        NavigationSplitView {
            List(pages, selection: $selectedPageId) { page in
                Text(page.name)
            }
            .navigationTitle("Settings")
        } detail: {
            if let selectedPageId,
               let page = pages.first(where: { sp in
                   sp.id == selectedPageId
               }) {
                Text(page.name)
                    .navigationTitle(page.name)
            } else {
                Text("Select a settings page")
            }
        }
    }
}

#Preview {
    SettingsView()
}
