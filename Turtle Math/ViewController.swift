//
//  ViewController.swift
//  Turtle Math
//
//  Created by Robert Foley on 1/30/16.
//  Copyright © 2016 Robert Foley. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    @IBAction func backgroundTapped(sender: AnyObject) {
        [self.view.endEditing(true)]
    }

    @IBOutlet weak var numOne4: UITextField!
    @IBOutlet weak var numOne3: UITextField!
    @IBOutlet weak var numOne2: UITextField!
    @IBOutlet weak var numOne1: UITextField!
    
    @IBOutlet weak var numTwo2: UITextField!
    @IBOutlet weak var numTwo1: UITextField!
    
    @IBOutlet weak var carryOne: UITextField!
    @IBOutlet weak var carryTwo: UITextField!
    @IBOutlet weak var carryThree: UITextField!
    
    @IBOutlet weak var numLevelOne1: UITextField!
    @IBOutlet weak var numLevelOne2: UITextField!
    @IBOutlet weak var numLevelOne3: UITextField!
    @IBOutlet weak var numLevelOne4: UITextField!
    @IBOutlet weak var numLevelOne5: UITextField!
    
    @IBOutlet weak var numLevelTwoZero: UITextField!
    @IBOutlet weak var numLevelTwo1: UITextField!
    @IBOutlet weak var numLevelTwo2: UITextField!
    @IBOutlet weak var numLevelTwo3: UITextField!
    @IBOutlet weak var numLevelTwo4: UITextField!
    @IBOutlet weak var numLevelTwo5: UITextField!
    
    @IBOutlet weak var numAnswer1: UITextField!
    @IBOutlet weak var numAnswer2: UITextField!
    @IBOutlet weak var numAnswer3: UITextField!
    @IBOutlet weak var numAnswer4: UITextField!
    @IBOutlet weak var numAnswer5: UITextField!
    @IBOutlet weak var numAnswer6: UITextField!
    
    @IBOutlet weak var checkAnswerLbl: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func clearBtn(sender: UIButton) {
        if numAnswer1.text != "" {
            numOne1.text = ""
            numOne2.text = ""
            numOne3.text = ""
            numOne4.text = ""
            numTwo1.text = ""
            numTwo2.text = ""
            carryOne.text = ""
            carryTwo.text = ""
            carryThree.text = ""
            numLevelOne1.text = ""
            numLevelOne2.text = ""
            numLevelOne3.text = ""
            numLevelOne4.text = ""
            numLevelOne5.text = ""
            numLevelTwoZero.text = "0"
            numLevelTwo1.text = ""
            numLevelTwo2.text = ""
            numLevelTwo3.text = ""
            numLevelTwo4.text = ""
            numLevelTwo5.text = ""
            numAnswer1.text = ""
            numAnswer2.text = ""
            numAnswer3.text = ""
            numAnswer4.text = ""
            numAnswer5.text = ""
            numAnswer6.text = ""
            checkAnswerLbl.text = ""
        } else if numAnswer1.text == "" {
            carryOne.text = ""
            carryTwo.text = ""
            carryThree.text = ""
        }
        
        
    }

    @IBAction func checkBtn(sender: UIButton) {
        var numberOne = ""
        var numberTwo = ""
        var numberAnswer = ""
        
        numberOne = numOne1.text! + numOne2.text! + numOne3.text! + numOne4.text!
        numberTwo = numTwo1.text! + numTwo2.text!
        
        numberAnswer = "\(Int(numberOne)! * Int(numberTwo)!)"
        
        self.checkAnswerLbl.text = numberAnswer
    }
    
}

