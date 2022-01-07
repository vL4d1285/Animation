//
//  DataManager.swift
//  Animation
//
//  Created by Vlad Ryabtsev on 07.01.2022.
//

import Spring

class DataManager {
    
    static let shared = DataManager()
    
    let animationList = Spring.AnimationPreset.allCases
    let curves = Spring.AnimationCurve.allCases
    
    private init() {}
}
