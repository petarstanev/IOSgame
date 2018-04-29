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
    @IBOutlet weak var scoreLabel: UILabel!
    var score: Int = 0
    
    @IBOutlet weak var questionLabel: UILabel!
    
    @IBOutlet weak var answerOne: UIButton!
    @IBOutlet weak var answerTwo: UIButton!
    @IBOutlet weak var answerThree: UIButton!
    @IBOutlet weak var answerFour: UIButton!
    
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

        var game = Game()
        var q = game.generateQuestion()
        
        questionLabel.text = q.printQuestion()
        answerOne.setTitle(q.answers[0].print(), for: .normal)
        answerTwo.setTitle(q.answers[1].print(), for: .normal)
        answerThree.setTitle(q.answers[2].print(), for: .normal)
        answerFour.setTitle(q.answers[3].print(), for: .normal)
        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func addScore(_ sender: UIButton) {
        score+=10;
        scoreLabel.text = String(score);
        
    }
   
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if (segue.identifier == "endGameSegue") {
            //Checking identifier is crucial as there might be multiple
            // segues attached to same view
            let endVC = segue.destination as! EndGameViewController;
            endVC.score = score
        }
    }
    
    func generateAnswer(){
        
    }
    
}
