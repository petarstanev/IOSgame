//
//  OptionsViewController.swift
//  Game
//
//  Created by Petar Stanev on 21/04/2018.
//  Copyright © 2018 Petar Stanev. All rights reserved.
//

import UIKit

class OptionsViewController: UIViewController {

    @IBOutlet weak var Sound: UISwitch!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let defaults = UserDefaults.standard
        let soundValue = defaults.bool(forKey: "sound")
        Sound.setOn(soundValue, animated: true)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func testaction(_ sender: UISwitch) {
        let defaults = UserDefaults.standard
        defaults.set(sender.isOn, forKey: "sound")
    }
}
