//
//  ViewController.swift
//  Calculator
//
//  Created by Loay on 7/8/18.
//  Copyright © 2018 Loay Productions. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var numberField: UITextField!
    
    private var field : String?{
        get{
            return numberField.text
        }
        set{
            numberField.text = newValue
        }
    }
    
    private var num1 = 0.0
    private var num2 = 0.0
    private var sign = ""
    
    private func addNum(_ newNum: Character){
    
        if (field?.starts(with: "0"))! && field?.count == 1{
            field?.remove(at: (field!.startIndex))
        }
        if field!.count < 9{
            field?.append(newNum)
        }
    }
    
    @IBAction func clearAll(_ sender: UIButton) {
        
        if !(field?.isEmpty)!{
            field = "0"
        }
    }
    
    @IBAction func buttonTimes(_ sender: UIButton) {
        num1 = Double(field!)!
        sign = "*"
        field = ""
    }
    
    @IBAction func buttonDIvide(_ sender: UIButton) {
        num1 = Double(field!)!
        sign = "/"
        field = ""
    }
    
    @IBAction func buttonMinus(_ sender: UIButton) {
        num1 = Double(field!)!
        sign = "-"
        field = ""
    }
    
    @IBAction func buttonPlus(_ sender: UIButton) {
        num1 = Double(field!)!
        sign = "+"
        field = ""
    }

    @IBAction func buttonEqual(_ sender: UIButton) {
        num2 = Double(field!)!
        
        var result = 0.0
        var err = false
        if sign == "+"{
            result = num1 + num2
        }
        else if sign == "-"{
            result = num1 - num2
        }
        else if sign == "*"{
            result = num1 * num2
        }
        else if sign == "/"{
            if num2 != 0{
                result = num1 / num2
            }else{
                err = true
                field = "Cannot Divide By Zero"
            }
        }
        if !err{
            if  floor(result) == result{
                field = String(Int(result))
            }else{
                field = String(result)
            }
            
        }
    }
    
    @IBAction func buttonDot(_ sender: UIButton) {
        
        if (field?.starts(with: "0"))! && field?.count == 1{
            field?.append(".")
        }
        
        else if !(field?.contains("."))!{
            addNum(".")
        }
    }
    
    @IBAction func button9(_ sender: UIButton) {
        
        addNum("9")
    }

    
    @IBAction func button8(_ sender: UIButton) {
        
        addNum("8")
    }
    
    @IBAction func button7(_ sender: UIButton) {
        
        addNum("7")
    }
    
    @IBAction func button6(_ sender: UIButton) {

        addNum("6")
    }
    
    @IBAction func button5(_ sender: UIButton) {
        
        addNum("5")
    }
    
    @IBAction func button4(_ sender: UIButton) {
        
        addNum("4")
    }
    
    
    @IBAction func button3(_ sender: UIButton) {
        
        addNum("3")
    }
    
    
    @IBAction func button2(_ sender: UIButton) {
        
        addNum("2")
    }
    
    @IBAction func button1(_ sender: UIButton) {
        
        addNum("1")
    }
    
    @IBAction func button0(_ sender: UIButton) {
        
        addNum("0")
    }
    
}

