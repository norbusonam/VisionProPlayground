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
            NavigationView {
                VStack {
                    Text("Sheet")
                }
                .navigationTitle("Sheet")
                .toolbar {
                    ToolbarItem(placement: .topBarTrailing) {
                        Button("", systemImage: "xmark") {
                            isSheetOpen = false
                        }
                    }
                }
            }
        })
    }
}

#Preview {
    SettingsView()
}
