//
//  ResultsController.swift
//  Roshambo
//
//  Created by Victor Guerra on 25/03/15.
//  Copyright (c) 2015 Victor Guerra. All rights reserved.
//

import UIKit

class ResultsController: UIViewController {
    
    let options = ["rock", "paper", "scissors"]
    var userChoice:Int?
    var computerChoice:Int?
    
    @IBOutlet weak var resultImage: UIImageView!
    @IBOutlet weak var resultLabel: UILabel!
    
    override func viewWillAppear(animated: Bool) {
        if let userChoiceValue = userChoice {
            computerChoice = Int(arc4random_uniform(3))
            
            var userWins = false
            let imageName:String
            
            if userChoiceValue == computerChoice {
                imageName = "tie"
                displayMessage("It is a Tie!")
            } else {
                switch userChoiceValue {
                case 0:
                    if (computerChoice == 2) {
                        userWins = true
                    }
                case 1:
                    if (computerChoice == 0) {
                        userWins = true
                    }
                case 2:
                    if (computerChoice == 1) {
                        userWins = true
                    }
                default:
                    userWins = false
                }

                let userChoiceStr = options[userChoiceValue]
                let computerChoiceStr = options[computerChoice!]
                if userChoiceStr < computerChoiceStr {
                    imageName = userChoiceStr + "_" + computerChoiceStr
                } else {
                    imageName = computerChoiceStr + "_" + userChoiceStr
                }
                if userWins {
                    displayMessage("You Win!!!")
                } else {
                    displayMessage("You Loose!!!")
                }
            }
            resultImage.image = UIImage(named: imageName)
        } else {
            displayMessage("There is no user action!")
        }
    }
    
    @IBAction func dismissView() {
        self.dismissViewControllerAnimated(true, completion: nil)
    }
    
    func displayMessage(message: String) {
        resultLabel.text = message
        resultLabel.sizeToFit()
    }
    
}