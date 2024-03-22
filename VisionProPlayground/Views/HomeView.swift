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
    @Environment(\.openWindow) private var openWindow
    @State private var enlarge = false
    
    var body: some View {
        NavigationStack {
            HStack {
                VStack {
                    Toggle("Enlarge RealityView Content", isOn: $enlarge)
                        .toggleStyle(.button)
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
                VStack {
                    Button("Open Another Window") {
                        openWindow(id: "another-window")
                    }
                }
                VStack {
                    NavigationLink("Add to Stack") {
                        Text("Added to stack")
                        NavigationLink("Add another to stack") {
                            Text("Added another to stack")
                                .navigationTitle("Another Stack View")
                        }
                        .navigationTitle("Stack View")
                    }
                }
            }
            .navigationTitle("Home")
            .ornament(attachmentAnchor: .scene(.trailing), contentAlignment: .leading, ornament: {
                Text("Custom Ornament")
                    .padding()
                    .glassBackgroundEffect()
            })
        }
    }
}

#Preview {
    HomeView()
}
