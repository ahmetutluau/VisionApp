//
//  EarthRealityArea.swift
//  VisionApp
//
//  Created by Ahmet Utlu on 6.03.2024.
//

import SwiftUI
import RealityKit
import RealityKitContent

struct EarthRealityArea: View {
    
    var body: some View {
        RealityView { content in
            guard let entity = try? await Entity(named: "Scene", in: realityKitContentBundle) else {
                fatalError("Unable to load scene model")
            }
            content.add(entity)
        }
    }
}

#Preview {
    EarthRealityArea()
        .environment(ViewModel())
}
