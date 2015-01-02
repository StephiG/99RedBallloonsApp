//
//  ViewController.swift
//  99RedBalloonsApp
//
//  Created by Stephi Goering on 31/12/14.
//  Copyright (c) 2014 Stephi Goering. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var ballonLabel: UILabel!
    @IBOutlet weak var myImageView: UIImageView!
    
    var myBalloons:[Balloon] = []
    
    var currentIndex = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
       
        self.createBalloons()
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func nextBallonBarButtonItemPressed(sender: UIBarButtonItem) {
        
        self.ballonLabel.hidden = false
        
        let balloon = self.myBalloons[currentIndex]
        
        var textForBallonLabel:String
        
        if currentIndex == 0 {
            textForBallonLabel = "1 Balloon"
        } else {
            textForBallonLabel = "\(balloon.numberOfBalloons) Balloons"
        }
        
        
        UIView.transitionWithView(self.view, duration: 2, options: UIViewAnimationOptions.TransitionCurlUp, animations: {
                self.myImageView.image = balloon.image
                self.ballonLabel.text = textForBallonLabel
            }, completion: nil)
        
        if currentIndex <= 97 {
            currentIndex++
        } else {
            currentIndex = 0
        }
        
    }

    func createBalloons(){
        
        for var i = 1; i <= 99 ; i++ {
            
            var nextBalloon = Balloon()
            nextBalloon.numberOfBalloons = i
            nextBalloon.image = nextBalloon.setBackgroundImage()
            self.myBalloons.append(nextBalloon)
        }

    }
}

