//
//  HomeView.swift
//  VisionProPlayground
//
//  Created by Norbu Sonam on 3/13/24.
//

import SwiftUI
import RealityKit
import RealityKitContent

struct HomeView: View {
    @State private var enlarge = false
    
    var body: some View {
        NavigationStack {
            VStack {
                Toggle("Enlarge RealityView Content", isOn: $enlarge)
                    .toggleStyle(.button)
            }
            VStack {
                RealityView { content in
                    if let scene = try? await Entity(named: "Scene", in: realityKitContentBundle) {
                        content.add(scene)
                    }
                } update: { content in
                    if let scene = content.entities.first {
                        let uniformScale: Float = enlarge ? 1.4 : 1.0
                        scene.transform.scale = [uniformScale, uniformScale, uniformScale]
                    }
                }
                .gesture(TapGesture().targetedToAnyEntity().onEnded { _ in
                    enlarge.toggle()
                })
            }
            .navigationTitle("Home")
        }
    }
}

#Preview {
    HomeView()
}