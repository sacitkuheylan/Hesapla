//
//  ViewController.swift
//  Hesapla
//
//  Created by Sacit Küheylan on 17.12.2019.
//  Copyright © 2019 Sacit Küheylan. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var totalAmountField: UITextField!
    @IBOutlet weak var personCountLabel: UILabel!
    @IBOutlet weak var zeroPctTip: UIButton!
    @IBOutlet weak var tenPctTip: UIButton!
    @IBOutlet weak var twentyPctTip: UIButton!
    var tipAmount : Double = 0.0
    var personCount : Int = 1
    var result : Double = 0.0
    var amount : Double = 0.0
    override func viewDidLoad() {
        super.viewDidLoad()
        personCountLabel.text = "\(personCount)"
        zeroPctTip.isSelected = true
        tipAmount = 1.0
    }

    @IBAction func stepperValueChanged(_ sender: UIStepper) {
        personCount = Int(sender.value)
        personCountLabel.text = "\(personCount)"
    }
    
    @IBAction func tipAmountChanged(_ sender: UIButton) {
        zeroPctTip.isSelected = false
        tenPctTip.isSelected = false
        twentyPctTip.isSelected = false
        if sender.currentTitle == "%0" {
            zeroPctTip.isSelected = true
            tenPctTip.isSelected = false
            twentyPctTip.isSelected = false
            tipAmount = 1.0
        }
        else if sender.currentTitle == "%10" {
            tenPctTip.isSelected = true
            zeroPctTip.isSelected = false
            twentyPctTip.isSelected = false
            tipAmount = 0.1
        }
        else if sender.currentTitle == "%20" {
            twentyPctTip.isSelected = true
            tenPctTip.isSelected = false
            zeroPctTip.isSelected = false
            tipAmount = 0.2
        }
        
    }
    
    @IBAction func calculateButtonPressed(_ sender: Any) {
        amount = Double(totalAmountField.text!)!
        result = (amount + (amount * tipAmount)) / Double(personCount)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "resultSegue" {
            let destinationVC = segue.destination as! ResultViewController
            
            destinationVC.result = "Hesap \(personCount) kişi arasında bölüşüldü. \n Kişi başı hesap miktarı \(String(format: "%.2f", result)) TL"
        }
    }
}

