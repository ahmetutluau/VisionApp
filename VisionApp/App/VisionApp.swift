//
//  VisionApp.swift
//  VisionApp
//
//  Created by Ahmet Utlu on 6.03.2024.
//

import SwiftUI

@main
struct VisionApp: App {
    @State private var model = ViewModel()
    
    var body: some Scene {
        WindowGroup("Main Areas", id: "Areas") {
            Areas()
                .environment(model)

        }
        
        WindowGroup(id: model.earthRealityArea) {
            EarthRealityArea()
                .environment(model)
        }
        .windowStyle(.volumetric)
        .defaultSize(width: 0.6, height: 0.6, depth: 0.6, in: .meters)
        
        ImmersiveSpace(id: model.fullRocketRealityArea) {
            FullRocketRealityArea()
                .environment(model)
        }
        .immersionStyle(selection: .constant(.full), in: .full)

    }
}
