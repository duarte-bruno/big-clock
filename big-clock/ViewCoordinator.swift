//
//  ViewCoordinator.swift
//  big-clock
//
//  Created by Bruno Duarte on 22/04/24.
//

import SwiftUI

struct ViewCoordinator: View {
    @State private var isActive = false
        var body: some View {
            if isActive {
                ContentView()
            } else {
                SplashView(isActive: $isActive)
            }
        }
}

#Preview {
    ViewCoordinator()
}
