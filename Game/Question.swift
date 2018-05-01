//
//  Question.swift
//  Game
//
//  Created by Petar Stanev on 28/04/2018.
//  Copyright © 2018 Petar Stanev. All rights reserved.
//

import Foundation

class Question {
    var answer: Int = 0;
    var numberOne: Int = 0;
    var numberTwo: Int = 0;
    var answers: [Answer] = [];
    var symbol: Character
    
    init(maxNumber:Int,symbol:Character){
        self.symbol = symbol
        numberOne = Int(arc4random_uniform(UInt32(maxNumber)) + 1)
        numberTwo = Int(arc4random_uniform(UInt32(maxNumber)) + 1)
        generateAnswers()
    }
    
    func calculateAnswer()->Int {
        preconditionFailure("This method must be overridden")
    }
    
    func generateAnswers(){
        let calculateValue = calculateAnswer()
        let correctAnswer = Answer(number: calculateValue, correct: true)
        answers.append(correctAnswer)
        generateWrongAnswers(correctAnswerValue: calculateValue)
        shuffleAnswers()
    }
    
    
    func generateWrongAnswers(correctAnswerValue: Int) {
       
        while answers.count < 4 {
            let falseValue = Int(arc4random_uniform(UInt32(correctAnswerValue)) + 20)
            if falseValue == correctAnswerValue {
                continue //If the generated wrong answer is the same as the correct one generate a new one.
            }
            let falseAnswer = Answer(number: falseValue, correct: false)
            answers.append(falseAnswer)
        }
    }
    
    func shuffleAnswers(){
        var originalOrder = answers
        answers.removeAll()
        for _ in 0..<originalOrder.count
        {
            let rand = Int(arc4random_uniform(UInt32(originalOrder.count)))
            
            answers.append(originalOrder[rand])
            
            originalOrder.remove(at: rand)
        }
    }
    func printQuestion() -> String {
        return String(numberOne) + String(symbol) + String(numberTwo)
    }

}
