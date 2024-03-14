//
//  ContentView.swift
//  VisionProPlayground
//
//  Created by Norbu Sonam on 3/9/24.
//

import SwiftUI
import RealityKit
import RealityKitContent

struct ContentView: View {
    @State private var name = ""
    
    var body: some View {
        TabView {
            HomeView()
                .tabItem {
                    Label("Home", systemImage: "house")
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
                Button("Dog", systemImage: "dog", action: {})
                    .buttonBorderShape(.circle)
            }
        }
    }
}

#Preview(windowStyle: .automatic) {
    ContentView()
}
