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
    var body: some View {
        VStack {
            Button("Load") {
                isLoading = true
                DispatchQueue.main.asyncAfter(deadline: .now() + 3) {
                    isLoading = false
                }
            }
            if isLoading {
                ProgressView()
            }
        }
        .padding()
        .animation(.default, value: isLoading)
    }
}

#Preview(windowStyle: .automatic) {
    ContentView()
}
