//
//  Score.swift
//  Game
//
//  Created by Petar Stanev on 22/04/2018.
//  Copyright © 2018 Petar Stanev. All rights reserved.
//

import Foundation
class Score : NSObject {
    var name: String
    var points: Int
    
    init(name:String, points:Int) {
        self.points=points;
        self.name=name;
    }
    
    init(input:String){
        var inputArr = input.components(separatedBy: "---")
        
        name = inputArr [0]
        points = Int(inputArr [1])!
    }
    
    func toString() -> String{
        return name + "---" + String(points)
    }
    
    
}
