//
//  SettingsView.swift
//  VisionProPlayground
//
//  Created by Norbu Sonam on 3/13/24.
//

import SwiftUI

struct SettingsView: View {
    @State private var isSheetOpen = false
    
    var body: some View {
        NavigationStack {
            VStack {
                Button("Open Sheet") {
                    isSheetOpen = true
                }
            }
            .navigationTitle("Settings")
        }
        .sheet(isPresented: $isSheetOpen, content: {
            Button("Close Sheet") {
                isSheetOpen = false
            }
        })
    }
}

#Preview {
    SettingsView()
}
