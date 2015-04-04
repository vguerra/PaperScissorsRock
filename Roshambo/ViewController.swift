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

        resultsController.userChoice = 0
        //self.presentViewController(resultsController, animated: true, completion: nil)
        self.navigationController?.pushViewController(resultsController, animated: true)
    }

    @IBAction func showResultsSegue() {
        performSegueWithIdentifier("showResultsPaper", sender: nil)
    }
    
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        switch segue.identifier!  {
        case "showResultsPaper", "showResultsScissors":
            let resultsController = segue.destinationViewController as! ResultsController
            if segue.identifier == "showResultsPaper" {
                resultsController.userChoice = 1
            }
            if segue.identifier == "showResultsScissors" {
                resultsController.userChoice = 2
            }
        case "showHistory":
            println("showHistory segue")
        default:
            println("unknown identifier")
            
        }
    }
}

