//
//  NavigationToAreas.swift
//  VisionApp
//
//  Created by Ahmet Utlu on 6.03.2024.
//

import SwiftUI

struct NavigationToAreas: View {
    var body: some View {
        VStack {
            Text("Welcome to Vision App")
                .monospaced()
                .font(.system(size: 40, weight: .bold))
                .padding(.top, 100)
            
            Spacer()
            
            HStack(spacing: 25) {
                ForEach(Area.allCases) { area in
                    NavigationLink {
                        Text(area.title)
                            .monospaced()
                            .font(.system(size: 40, weight: .bold))
                            .padding(.top, -100)
                        
                        if area == Area.council {
                            CouncilArea()
                        }
                        else if area == Area.models {
                            ModelsArea()
                        }
                        
                    } label: {
                        Label(area.name, systemImage: "chevron.right")
                            .monospaced()
                            .font(.title)
                    }
                    .controlSize(.extraLarge)
                }
            }
            .padding(.bottom, 100)
        }
        .background() {
            Image("backgroundImage")
        }
    }
}

#Preview {
    NavigationToAreas()
}
