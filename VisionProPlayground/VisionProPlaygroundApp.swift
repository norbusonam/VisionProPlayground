//
//  VisionProPlaygroundApp.swift
//  VisionProPlayground
//
//  Created by Norbu Sonam on 3/9/24.
//

import SwiftUI

@main
struct VisionProPlaygroundApp: App {
    var body: some Scene {
        WindowGroup {
            ContentView()
                .progressViewStyle(.circular)
        }
        WindowGroup(id: "another-window") {
            Text("Another Window")
        }
    }
}
