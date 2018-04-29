//
//  Game.swift
//  Game
//
//  Created by Petar Stanev on 28/04/2018.
//  Copyright © 2018 Petar Stanev. All rights reserved.
//

import Foundation

class Game {
    var points: Int = 0;
    var mistakes: Int = 0;
    var over: Bool = false;

    func generateQuestion() -> Question {
        var question = AdditionQuestion(maxNumber: 20)
        
        return question
    }
}
