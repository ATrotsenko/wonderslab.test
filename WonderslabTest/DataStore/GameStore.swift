//
//  GameStore.swift
//  WonderslabTest
//
//  Created by Alexey Trotsenko on 01.03.2018.
//  Copyright © 2018 Alexey Trotsenko. All rights reserved.
//

import UIKit

struct GameStore {
    
    let firstNumber: Int
    let secondNumber: Int
    let itemsCount: Int
    
    func calculateGame() -> [String] {
        var result = [String]()
        for i in 1..<itemsCount {
            
            if i % firstNumber == 0 && i % secondNumber == 0 {
                result.append("Bip Bop")
            } else if i % secondNumber == 0 {
                result.append("Bop")
            } else if i % firstNumber == 0 {
                result.append("Bip")
            } else {
                result.append("\(i)")
            }
        }
        return result
    }
}
