//
//  Game.swift
//  Game
//
//  Created by Petar Stanev on 28/04/2018.
//  Copyright © 2018 Petar Stanev. All rights reserved.
//

import Foundation

class Game {
    var score: Int = 0
    var level:Int = 1
    var lives: Int = 3
    var over: Bool = false
    var question: Question
    
    init() {
        self.question = QuestionFactory.getQuestion(level: 0)
    }
    
    func generateQuestion() -> Question {
        if score > 0 && score%20 == 0 {
            self.level+=1
        }
        
        self.question = QuestionFactory.getQuestion(level: level)
        
        return question
    }
}
