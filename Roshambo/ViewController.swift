//
//  ViewController.swift
//  Roshambo
//
//  Created by Victor Guerra on 24/03/15.
//  Copyright (c) 2015 Victor Guerra. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func showResults() {
        let resultsController = self.storyboard?.instantiateViewControllerWithIdentifier("ResultsController") as! ResultsController
        
        self.presentViewController(resultsController, animated: true, completion: nil)
    }

}

