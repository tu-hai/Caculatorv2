//
//  ViewController.swift
//  Caculator
//
//  Created by WITZ on 8/14/18.
//  Copyright © 2018 WITZ. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    var numberInput: Double?
    var previousNumber: Double?
    var perform = false
    var operation: String = ""
    
    @IBOutlet weak var labelShow: UILabel!
   
    @IBAction func numbers(_ sender: UIButton) {
        if perform == true
        {
            labelShow.text = String(sender.tag-1)
            previousNumber = Double (labelShow.text!)
            perform = false
        }
        else
        {
            labelShow.text = labelShow.text! + String(sender.tag-1)
            numberInput = Double(labelShow.text!)
        }
    }
    
    @IBAction func clearButton(_ sender: Any) {
        labelShow.text = ""
        previousNumber = 0
        numberInput = 0
    }
    
    @IBAction func didButton(_ sender: Any) {
       // labelShow.text = "/"
        operation = "/"
        numberInput = Double (labelShow.text!)
        perform = true
    }
    
    @IBAction func plusButton(_ sender: Any) {
       // labelShow.text = "+"
        operation = "+"
        numberInput = Double(labelShow.text!)
        perform = true
    }
    
    @IBAction func mulButton(_ sender: Any) {
       // labelShow.text = "*"
        operation = "*"
        numberInput = Double(labelShow.text!)
        perform = true
    }
    
    @IBAction func minButton(_ sender: Any) {
       // labelShow.text = "_"
        operation = "-"
        numberInput = Double(labelShow.text!)
        perform = true
    }
    
    @IBAction func equaButton(_ sender: Any) {
        var results:Double?
        switch operation {
        case "*":
            results = previousNumber! * numberInput!
        case "/":
            if numberInput != 0 { results = previousNumber! / numberInput!}
            else {
                results = nil
            }
        case "-":
            results = previousNumber! - numberInput!
        case "+":
            results = previousNumber! + numberInput!
        default:
            results = 0.0
        }
        labelShow.text = String( results!)
    }
}
