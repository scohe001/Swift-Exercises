//
//  ViewController.swift
//  p5
//
//  Created by Ari Cohen on 9/25/16.
//  Copyright © 2016 Chump. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var treeCharField: UITextField!
    @IBOutlet weak var treeView: UILabel!
    
    @IBOutlet weak var heightStep: UIStepper!
    @IBOutlet weak var trunkWidthStep: UIStepper!
    @IBOutlet weak var leavesWidthStep: UIStepper!
    
    @IBOutlet weak var heightLabel: UILabel!
    @IBOutlet weak var trunkWidthLabel: UILabel!
    @IBOutlet weak var leavesWidthLabel: UILabel!
    
    @IBAction func stepChanged(_ sender: UIStepper) {
        //Make sure trunk width is within leaves width
        trunkWidthStep.maximumValue = leavesWidthStep.value - 2;
        
        //Update labels so the user sees what they're doing
        //Would be nice to use bindings, but I don't know how yet...
        heightLabel.text = String(Int(heightStep.value))
        leavesWidthLabel.text = String(Int(leavesWidthStep.value))
        trunkWidthLabel.text = String(Int(trunkWidthStep.value))
        
        drawTree()
    }
    
    @IBAction func charChanged(_ sender: UITextField) {
        if (treeCharField.text?.characters.count)! > 1 {
            treeCharField.text =
                String((treeCharField.text?[(treeCharField.text?.startIndex)!])!)
        }

        drawTree()

    }

    func drawTree() {
        //Don't draw a tree if we have nothing to draw with
        if(treeCharField.text?.characters.count == 1) {
            //Plug our values in and make the tree!
            treeView.text? = getTree(ch: treeCharField.text!,
                                     height: Int(heightStep.value),
                                     trunkWidth: Int(trunkWidthStep.value),
                                     leavesWidth: Int(leavesWidthStep.value))
        }
    }
    
    func getTree(ch: String, height: Int,
                 trunkWidth: Int, leavesWidth: Int) -> String {
        var tree: String = ""
        for row in 0..<((leavesWidth+1)/2) {
            if row < (leavesWidth / 2) {
                for _ in 0..<((leavesWidth/2) - row) {
                    tree.append(" ")
                }
            }
            for _ in 0..<((row * 2) + 1) {
                tree.append(ch)
            }
            tree.append("\n")
        }
        
        for _ in 1...height {
            for _ in 1...((leavesWidth - trunkWidth) / 2) {
                tree.append(" ")
            }
            for _ in 1...trunkWidth {
                tree.append(ch)
            }
            tree.append("\n")
        }
        return tree
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }
    
}

