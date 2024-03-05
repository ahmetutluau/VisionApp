//
//  VisionAppApp.swift
//  VisionApp
//
//  Created by Ahmet Utlu on 5.03.2024.
//

import SwiftUI

@main
struct VisionAppApp: App {
    var body: some Scene {
        WindowGroup {
            ContentView()
        }

        ImmersiveSpace(id: "ImmersiveSpace") {
            ImmersiveView()
        }.immersionStyle(selection: .constant(.full), in: .full)
    }
}
