//
//  ViewController.swift
//  My Cognitive App
//
//  Created by Marek Sadowski on 5/10/16.
//  Copyright © 2016 Marek Sadowski. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var textField: UITextField!
    @IBOutlet weak var textStatusLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func checkButtonPressed(sender: AnyObject) {
        NSLog(textField.text!)

        //checking sentiment
        //setting feedback on sentiment
        textStatusLabel.text = textField.text
    }
}

