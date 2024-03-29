//
//  ContentView.swift
//  VisionProPlayground
//
//  Created by Norbu Sonam on 3/9/24.
//

import SwiftUI

struct ContentView: View {
    @State private var name = ""
    
    var body: some View {
        TabView {
            HomeView()
                .tabItem {
                    Label("Home", systemImage: "house")
                }
            SettingsView()
                .tabItem {
                    Label("Settings", systemImage: "gear")
                }
        }
        .toolbar {
            ToolbarItemGroup(placement: .bottomOrnament) {
                TextField("What's your name?", text: $name)
                    .hoverEffectDisabled()
                    .padding()
                    .background(in: .capsule)
                    .hoverEffect()
                Button("Cat", systemImage: "cat", action: {})
                    .buttonBorderShape(.circle)
                    .help("Cat")
                Button("Dog", systemImage: "dog", action: {})
                    .buttonBorderShape(.circle)
                    .help("Dog")
            }
        }
    }
}

#Preview(windowStyle: .automatic) {
    ContentView()
}
