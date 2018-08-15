//
//  ViewController.swift
//  Caculator
//
//  Created by WITZ on 8/14/18.
//  Copyright © 2018 WITZ. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    var numberInput: Double = 0
    var previousNumber: Double = 0
    var perform = false
    var operation = 0;
    
    @IBOutlet weak var labelShow: UILabel!
   
    @IBAction func numbers(_ sender: UIButton) {
        if perform == true{
            labelShow.text = String(sender.tag)
            numberInput = Double(labelShow.text!)!
            perform = false
        }else{
            labelShow.text = labelShow.text! + String(sender.tag)
            numberInput = Double (labelShow.text!)!
        }
    }
    
    
    @IBAction func fetures(_ sender: UIButton) {
        if labelShow.text != "" && sender.tag != 10 && sender.tag != 17 {
            previousNumber = Double(labelShow.text!)!
            if sender.tag == 13 {// chia
                labelShow.text = "/"
            }
                
            else if  sender.tag == 14 {
                labelShow.text = "x"
            }
                
            else if  sender.tag == 15 {
                labelShow.text = "-"
            }
                
            else if  sender.tag == 16 {
                labelShow.text = "+"
            }
            
            operation = sender.tag
            perform = true
        }
            
        else if sender.tag == 17 { // dau =
//            if sender.tag == 13{
//                labelShow.text = String (previousNumber / numberInput)
//            }
//            else if sender.tag == 14{
//                labelShow.text = String (previousNumber * numberInput)
//            }
//            else if sender.tag == 15{
//                labelShow.text = String (previousNumber - numberInput)
//            }
//            else if sender.tag == 16{
//                labelShow.text = String (previousNumber + numberInput)
//            }
                    switch sender.tag == 17 {
                    case sender.tag == 13:
                        labelShow.text = String (previousNumber / numberInput)
                    default:
                        labelShow.text = "Apple"
                    }
        }
        
        else if sender.tag == 10 { // AC
            labelShow.text = ""
            previousNumber = 0
            numberInput = 0
            operation = 0
        }
            
        else if sender.tag == 12 { // %
            labelShow.text = String(numberInput * 0.01)
        }
        
        else if sender.tag == 11 { // +=
            labelShow.text = String (numberInput * -1)
        }
    }
}
