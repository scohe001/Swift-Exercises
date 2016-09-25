//
//  ViewController.swift
//  p4
//
//  Created by Ari Cohen on 9/24/16.
//  Copyright © 2016 Chump. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    // MARK: Properties
    @IBOutlet weak var textBox: UITextField!
    @IBOutlet weak var outText: UILabel!
    
    let abbreviations = [
        "BFF" : "best friend forever",
        "IDK" : "I don't know",
        "JK" : "just kidding",
        "TMI" : "too much information",
        "TTYL" : "talk to you later",
        ]
    
    @IBAction func textChanged(_ sender: UITextField) {
        var text: String? = textBox.text
        for (acr, expanded) in abbreviations {
            while let r = text?.uppercased().range(of: acr) {
                text?.replaceSubrange(r, with: expanded)
            }
        }
        outText.text = text
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

}

