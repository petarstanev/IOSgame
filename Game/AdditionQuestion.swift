//
//  AdditionQuestion.swift
//  Game
//
//  Created by Petar Stanev on 28/04/2018.
//  Copyright © 2018 Petar Stanev. All rights reserved.
//

import Foundation

class AdditionQuestion: Question {
    init(maxNumber:Int) {
        super.init(maxNumber: maxNumber, symbol: "+")
    }
    
    override func calculateAnswer() -> Int {
        return numberOne + numberTwo;
    }
}
