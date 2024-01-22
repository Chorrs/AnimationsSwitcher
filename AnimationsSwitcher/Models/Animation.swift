//
//  Animation.swift
//  AnimationsSwitcher
//
//  Created by Chorrs on 20.01.24.
//

struct Animation: CustomStringConvertible {
    let name: String
    let curve: String
    let force: Double
    let duration: Double
    let delay: Double
    
    var description: String {
     """
     preset: \(name)
     curve: \(curve)
     force: \(String(format: "%.02f", force))
     duration: \(String(format: "%.02f", duration))
     delay: \(String(format: "%.02f", delay))
     """
        
    }
}

extension Animation {
    static var randomAnimation: Animation {
        Animation(
            name: DataStore.shared.animations.randomElement()?.rawValue ?? "wobble",
            curve: DataStore.shared.curve.randomElement()?.rawValue ?? "easeIn",
            force: Double.random(in: 1...1.5),
            duration: Double.random(in: 0.8...1.6),
            delay: 1
        )
    }
}
