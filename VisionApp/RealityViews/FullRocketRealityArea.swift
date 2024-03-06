//
//  FullRocketRealityArea.swift
//  VisionApp
//
//  Created by Ahmet Utlu on 6.03.2024.
//

import SwiftUI
import RealityKit
import RealityKitContent

struct FullRocketRealityArea: View {    
    var body: some View {
        RealityView { content in
            guard let entity = try? await Entity(named: "Immersive", in: realityKitContentBundle) else {
                fatalError("Unable to load immersive model")
            }
            content.add(entity)
        }
    }
}

#Preview {
    FullRocketRealityArea()
        .environment(ViewModel())
}
