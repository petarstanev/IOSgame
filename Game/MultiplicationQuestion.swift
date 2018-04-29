//
//  MultiplicationQuestion.swift
//  Game
//
//  Created by Petar Stanev on 29/04/2018.
//  Copyright © 2018 Petar Stanev. All rights reserved.
//

import Foundation

class MultiplicationQuestion: Question {
    init(maxNumber:Int) {
        super.init(maxNumber: maxNumber/10, symbol: "*")
    }
    
    override func calculateAnswer() -> Int {
        return numberOne * numberTwo;
    }
}
