//
//  ViewModel.swift
//  VisionApp
//
//  Created by Ahmet Utlu on 6.03.2024.
//

import Foundation

@Observable
class ViewModel
{
    var isShowingEarth : Bool = false
    var isShowingFullRocket : Bool = false
    
    var earthRealityArea: String = "EarthRealityArea"
    var fullRocketRealityArea: String = "FullRocketRealityArea"
}
