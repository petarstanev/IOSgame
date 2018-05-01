//
//  QuestionFactory.swift
//  Game
//
//  Created by Petar Stanev on 29/04/2018.
//  Copyright © 2018 Petar Stanev. All rights reserved.
//

import Foundation

struct QuestionFactory {
    
    static func getQuestion(level:Int) -> Question {
        var questionTypeLevel = level
        let maxNumber = level * 10
        
        if questionTypeLevel > 4 {
            questionTypeLevel = 4
        }
        
        let questionType = Int(arc4random_uniform(UInt32(questionTypeLevel))) //pick random type of question based on level
        
        // print(questionType)
        
        switch questionType {
        case 1:
            return SubtractionQuestion(maxNumber: maxNumber)
        case 2:
            return MultiplicationQuestion(maxNumber: maxNumber)
        case 3:
            return DivisionQuestion(maxNumber: maxNumber)
        default:
            return AdditionQuestion(maxNumber: maxNumber)
        }
    }
}
