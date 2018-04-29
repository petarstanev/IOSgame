//
//  AdditionQuestion.swift
//  Game
//
//  Created by Petar Stanev on 28/04/2018.
//  Copyright © 2018 Petar Stanev. All rights reserved.
//

import Foundation

class SubtractionQuestion: Question {
    init(maxNumber:Int) {
        super.init(maxNumber: maxNumber, symbol: "-")
    }
    
    override func calculateAnswer() -> Int {
        if(numberTwo > numberOne){
            let saveNumber  = numberOne
            numberOne = numberTwo
            numberTwo = saveNumber
        }
        return numberOne - numberTwo;
    }
}
