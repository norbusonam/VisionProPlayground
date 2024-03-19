//
//  VisionProPlaygroundApp.swift
//  VisionProPlayground
//
//  Created by Norbu Sonam on 3/9/24.
//

import SwiftUI

@main
struct VisionProPlaygroundApp: App {
    @Environment(\.dismissWindow) private var dismissWindow
    
    var body: some Scene {
        WindowGroup {
            ContentView()
                .progressViewStyle(.circular)
        }
        WindowGroup(id: "another-window") {
            Text("Another Window")
            Button("Close") {
                dismissWindow(id: "another-window")
            }
        }
    }
}
