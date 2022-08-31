//
//  ViewController.swift
//  Prework
//
//  Created by administrator on 8/30/22.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var billAmountTextField: UITextField!
    @IBOutlet weak var tipAmountLabel: UILabel!
    @IBOutlet weak var tipControl: UISegmentedControl!
    @IBOutlet weak var totalLabel: UILabel!
    
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func calculateTip(_ sender: Any) {
        //get the amount from the text input
        let bill = Double(billAmountTextField.text!) ?? 0
        
        //get Total tip by multiplying tip * percentage
        let tipPercentages = [0.15, 0.18, 0.20]
        let tip = bill * tipPercentages[tipControl.selectedSegmentIndex]
        let total = bill+tip
        
        //update the tip amount
        tipAmountLabel.text = String(format: "$%.2f", tip)
        //update the total
        totalLabel.text = String(format: "$%.2f", total)
        }
    
    
}

