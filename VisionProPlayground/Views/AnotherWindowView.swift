//
//  AnotherWindowView.swift
//  VisionProPlayground
//
//  Created by Norbu Sonam on 3/18/24.
//

import SwiftUI

struct AnotherWindowView: View {
    @Environment(\.dismissWindow) private var dismissWindow
    
    var body: some View {
        Text("Another Window")
        Button("Close") {
            dismissWindow()
        }
    }
}

#Preview {
    AnotherWindowView()
}
