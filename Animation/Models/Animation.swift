//
//  Animation.swift
//  Animation
//
//  Created by Vlad Ryabtsev on 07.01.2022.
//

struct Animation {
    
    let preset: String
    let curve: String
    let force: Double
    let duration: Double
    let delay: Double
    
    var description: String {
        """
        Preset: \(preset)
        Curve: \(curve)
        Force: \(String(format: "%.02f",force))
        Duration: \(String(format: "%.02f",duration))
        Delay: \(String(format: "%.02f",delay))
        """
    }
    
    static func getRandomAnimation () -> Animation {
        Animation(
            preset: DataManager.shared.animationList.randomElement()?.rawValue ?? "shake",
            curve: DataManager.shared.curves.randomElement()?.rawValue ?? "easeIn",
            force: Double.random(in: 0...1),
            duration: Double.random(in: 0...1),
            delay: Double.random(in: 0...1))
    }
    
}
