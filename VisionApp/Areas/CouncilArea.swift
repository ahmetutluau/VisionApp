//
//  CouncilArea.swift
//  VisionApp
//
//  Created by Ahmet Utlu on 6.03.2024.
//

import SwiftUI

struct CouncilArea: View {
    var body: some View {
        HStack {
            ForEach(Council.allCases) { council in
                VStack(alignment: .center) {
                    Image("council-\(council.name)")
                        .resizable()
                        .frame(width: 200, height: 220)
                    Text(council.fullName)
                        .font(.system(size: 22, weight: .bold))
                    Text(council.about)
                        .font(.system(size: 20))
                }
                .frame(minWidth: 180, minHeight: 200)
                .padding(20)
                .glassBackgroundEffect()
            }
        }
        .padding(20)
    }
}

#Preview {
    CouncilArea()
}
