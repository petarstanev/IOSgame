//
//  MenuViewController.swift
//  Game
//
//  Created by Petar Stanev on 22/04/2018.
//  Copyright © 2018 Petar Stanev. All rights reserved.
//

import UIKit

class MenuViewController: UIViewController {

    @IBOutlet weak var leftStar: UIImageView!
    @IBOutlet weak var centerStar: UIImageView!
    @IBOutlet weak var rightStar: UIImageView!
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        
        UIView.animate(withDuration: 2.5, delay: 0, options: [.repeat, .autoreverse], animations: {
            self.leftStar.transform = CGAffineTransform(rotationAngle:  CGFloat.pi)
            self.centerStar.transform = CGAffineTransform(rotationAngle: 0.5)
            self.centerStar.transform = CGAffineTransform(rotationAngle: -0.10)
            self.rightStar.transform = CGAffineTransform(rotationAngle: -CGFloat.pi)
        })

        
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
