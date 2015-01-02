//
//  Balloon.swift
//  99RedBalloonsApp
//
//  Created by Stephi Goering on 31/12/14.
//  Copyright (c) 2014 Stephi Goering. All rights reserved.
//

import Foundation
import UIKit

struct Balloon {
    
    var numberOfBalloons = 0
    var image = UIImage(named:"BerlinTVTower.jpg")
    
    func setBackgroundImage() -> UIImage {
        
        let randomNumber = Int(arc4random_uniform(UInt32(4)))
        var image = UIImage(named:"")
        
        switch randomNumber {
        case 0:
            image = UIImage(named:"RedBalloon1.jpg")
        case 1:
            image = UIImage(named:"RedBalloon2.jpg")
        case 2:
            image = UIImage(named:"RedBalloon3.jpg")
        case 3:
            image = UIImage(named:"RedBalloon4.jpg")
        default:
            image = UIImage(named: "BerlinTVTower.jpg")
        }
        
        return image!
    }

}