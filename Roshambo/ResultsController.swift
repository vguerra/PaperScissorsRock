//
//  ResultsController.swift
//  Roshambo
//
//  Created by Victor Guerra on 25/03/15.
//  Copyright (c) 2015 Victor Guerra. All rights reserved.
//

import UIKit

class ResultsController: UIViewController {

    var userChoice:String?
    
    @IBOutlet weak var resultImage: UIImageView!
    @IBOutlet weak var resultLabel: UILabel!
    
    
    
    override func viewWillAppear(animated: Bool) {
        // We set the image
        resultLabel.text = userChoice! + " +  " +  computerChoice()
        resultLabel.sizeToFit()
    }
    
    @IBAction func dismissView() {
        self.dismissViewControllerAnimated(true, completion: nil)
    }
    
    func computerChoice () -> String {
        let options = ["rock", "paper", "scissors"]
        return options[Int(arc4random() % 3)]
    
    }
}