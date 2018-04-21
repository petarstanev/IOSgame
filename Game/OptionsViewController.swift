//
//  OptionsViewController.swift
//  Game
//
//  Created by Petar Stanev on 21/04/2018.
//  Copyright © 2018 Petar Stanev. All rights reserved.
//

import UIKit

class OptionsViewController: UIViewController {

    @IBOutlet weak var soundSwitch: UISwitch!
    @IBOutlet weak var vibrationSwitch: UISwitch!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let defaults = UserDefaults.standard
        let soundValue = defaults.bool(forKey: "sound")
        soundSwitch.setOn(soundValue, animated: false)
        let vibrationValue = defaults.bool(forKey: "vibration")
        vibrationSwitch.setOn(vibrationValue, animated: false)
    }

    @IBAction func soundChangeAction(_ sender: UISwitch) {
        let defaults = UserDefaults.standard
        defaults.set(sender.isOn, forKey: "sound")
    }
    
    @IBAction func vibrationChangeAction(_ sender: UISwitch) {
        let defaults = UserDefaults.standard
        defaults.set(sender.isOn, forKey: "vibration")
    }
}
