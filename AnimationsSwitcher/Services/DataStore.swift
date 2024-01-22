//
//  DataStore.swift
//  AnimationsSwitcher
//
//  Created by Chorrs on 20.01.24.
//

import SpringAnimation

final class DataStore {
    
    static let shared = DataStore()
    
    let animations: [AnimationPreset] = AnimationPreset.allCases
    
    let curve = AnimationCurve.allCases
    
    private init() {}
}
