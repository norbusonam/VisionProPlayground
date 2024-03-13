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
    @State private var isLoading = false
    @State private var result: Int?
    
    var body: some View {
        TabView {
            VStack {
                Button("Load") {
                    isLoading = true
                    DispatchQueue.main.asyncAfter(deadline: .now() + 3) {
                        result = Int.random(in: 1...10)
                        isLoading = false
                    }
                }
                if isLoading {
                    ProgressView()
                } else if let result {
                    Text(String(result))
                }
            }
            .padding()
            .animation(.default, value: isLoading)
            .tabItem {
                Label("Home", systemImage: "house")
            }
        }
    }
}

#Preview(windowStyle: .automatic) {
    ContentView()
}
