//
//  ModelsArea.swift
//  VisionApp
//
//  Created by Ahmet Utlu on 6.03.2024.
//

import SwiftUI

struct ModelsArea: View {
    @Environment(ViewModel.self) private var model
    @Environment(\.openWindow) private var openWindow
    @Environment(\.dismissWindow) private var dismissWindow
    
    @Environment(\.openImmersiveSpace) private var openImmersiveSpace
    @Environment(\.dismissImmersiveSpace) private var dismissImmersiveSpace
    
    var body: some View {
        @Bindable var model = model
        
        HStack(spacing: 50) {
            ModelCard(isShowing: $model.isShowingEarth, toggleTitle: "Earth Model (Volumetric)", imageName: "earthImage") {
                openWindow(id: model.earthRealityArea)
            } dismissCard: {
                dismissWindow(id: model.earthRealityArea)
            }
            
            ModelCard(isShowing: $model.isShowingFullRocket, toggleTitle: "Rocket (Full Immersive Space)", imageName: "rocketFull") {
                await openImmersiveSpace(id: model.fullRocketRealityArea)
            } dismissCard: {
                await dismissImmersiveSpace()
            }
        }
    }
}

#Preview {
    ModelsArea()
}
