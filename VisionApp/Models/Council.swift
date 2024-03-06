//
//  Council.swift
//  VisionApp
//
//  Created by Ahmet Utlu on 6.03.2024.
//

import Foundation

enum Council : String, Identifiable, CaseIterable, Equatable
{
    case tim, jeff, luca
    var id: Self { self }
    var name: String { rawValue }
    
    var fullName: String {
        switch self {
        case .tim:
            "Tim Cook"
        case .jeff:
            "Jeff Williams"
        case .luca:
            "Luca Maestri"
        }
    }
    
    var about: String {
        switch self {
        case .tim:
            "Timothy Donald Cook (born November 1, 1960)[1] is an American business executive who has been the chief executive officer of Apple Inc."
        case .jeff:
            "Williams joined Apple in 1998 as head of worldwide procurement and in 2004 he was named vice president of Operations."
        case .luca:
            "In 2014, after working at Apple Inc. as vice president of Finance and corporate controller, he was appointed CFO of Apple Inc."
        }
    }
}
