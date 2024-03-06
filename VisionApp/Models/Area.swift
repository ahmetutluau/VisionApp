//
//  Area.swift
//  VisionApp
//
//  Created by Ahmet Utlu on 6.03.2024.
//

import Foundation

enum Area: String, Identifiable, CaseIterable, Equatable {
    case council, models
    
    var id: Self { self }
    var name: String { rawValue.capitalized }
    
    var title: String {
        switch self {
        case .council:
            "Apple council members..."
        case .models:
            "Space models..."
        }
    }
}
