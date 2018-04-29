//
//  Answer.swift
//  Game
//
//  Created by Petar Stanev on 28/04/2018.
//  Copyright © 2018 Petar Stanev. All rights reserved.
//

import Foundation

class Answer{
    var number:Int
    var correct:Bool
    
    init(number:Int, correct:Bool) {
        self.number = number
        self.correct = correct
    }
    
    func print() -> String {
        return String(number)
    }
    
}
