//
//  GameViewController.swift
//  Game
//
//  Created by Petar Stanev on 22/04/2018.
//  Copyright © 2018 Petar Stanev. All rights reserved.
//

import UIKit
import AVFoundation

class GameViewController: UIViewController {

    var player: AVAudioPlayer?
    
    @IBAction func musicButtonEvent(_ sender: UIButton) {
        print("music")
        guard let url = Bundle.main.url(forResource: "correct_answer", withExtension: "wav") else {
            print("url not found")
            return
        }
        
        do {
            /// this codes for making this app ready to takeover the device audio
            try AVAudioSession.sharedInstance().setCategory(AVAudioSessionCategoryPlayback)
            try AVAudioSession.sharedInstance().setActive(true)
            
            /// change fileTypeHint according to the type of your audio file (you can omit this)
            
            /// for iOS 11 onward, use :
            player = try AVAudioPlayer(contentsOf: url, fileTypeHint: AVFileType.mp3.rawValue)
            
            /// else :
            /// player = try AVAudioPlayer(contentsOf: url, fileTypeHint: AVFileTypeMPEGLayer3)
            
            // no need for prepareToPlay because prepareToPlay is happen automatically when calling play()
            player!.play()
        } catch let error as NSError {
            print("error: \(error.localizedDescription)")
        }
    }
    
    @IBAction func vibrationButtonEvent(_ sender: UIButton) {
        print("vibration")
        let generator = UIImpactFeedbackGenerator(style: .heavy)
        generator.impactOccurred()
        
        /*
            OR
         
         import AudioToolbox
         
         class ViewController: UIViewController {
         
         override func viewDidLoad() {
         super.viewDidLoad()
         AudioServicesPlayAlertSound(SystemSoundID(kSystemSoundID_Vibrate))
         }
         }
        */
		
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
