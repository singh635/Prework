//
//  ViewController.swift
//  Prework
//
//  Created by Ayushman Singh on 1/24/21.
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
        // Get bill amount from text field input
        let bill = Double(billAmountTextField.text!) ?? 0
        
        // Get total tip by multipliying tip with tip percentage
        let tipPercentages = [0.15, 0.18, 0.20]
        let tip = bill * tipPercentages[tipControl.selectedSegmentIndex]
        let total = bill + tip

        print("GAY")
        // Update Tip Amount Label
        tipAmountLabel.text = String(format: "$%.2f", tip)
        print("GAY1")
        print(tip)
        print(total)
        // Update total amount
        totalLabel.text = String(format: "$%.2f", total)
        print("GAY2")
    }
    
}

