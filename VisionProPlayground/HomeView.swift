//
//  HomeView.swift
//  VisionProPlayground
//
//  Created by Norbu Sonam on 3/13/24.
//

import SwiftUI

struct HomeView: View {
    @State private var name = ""
    @State private var isLoading = false
    @State private var result: Int?
    
    var body: some View {
        NavigationStack {
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
            .navigationTitle("Home")
        }
        .animation(.default, value: isLoading)
    }
}

#Preview {
    HomeView()
}
