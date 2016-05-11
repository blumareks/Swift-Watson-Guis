//
//  ViewController.swift
//  My Cognitive App
//
//  Created by Marek Sadowski on 5/10/16.
//  Copyright © 2016 Marek Sadowski. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    
    @IBOutlet weak var urlText: UITextField!
    @IBOutlet weak var analysisTextLabel: UILabel!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func analysisButtonPressed(sender: AnyObject) {
        NSLog("Button pressed")
        NSLog("URL: "+urlText.text!)
        analysisTextLabel.text="Analysis of the URL " + urlText.text!
        
    }
    
}

