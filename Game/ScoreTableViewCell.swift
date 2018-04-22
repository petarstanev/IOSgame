//
//  ScoreTableViewCell.swift
//  Game
//
//  Created by Petar Stanev on 22/04/2018.
//  Copyright © 2018 Petar Stanev. All rights reserved.
//

import UIKit

class ScoreTableViewCell: UITableViewCell {

    @IBOutlet weak var player: UILabel!
    @IBOutlet weak var score: UILabel!
    
    @IBOutlet weak var photo: UIImageView!
    
    
    
    
    override func awakeFromNib() {
        super.awakeFromNib()
        
        
        
        
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
