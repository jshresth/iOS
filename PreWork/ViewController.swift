//
//  ViewController.swift
//  PreWork
//
//  Created by JS on 9/10/21.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBOutlet weak var billAmountTextField: UITextField!
    
    @IBOutlet weak var tipAmount: UILabel!


    @IBOutlet weak var tipAmountController: UISegmentedControl!
    

    @IBOutlet weak var tipTotal: UILabel!
    
    @IBAction func calculateTip(_ sender: Any) {
        let bill = Double(billAmountTextField.text!) ?? 0
        
        let tipPercent = [0.15, 0.18, 0.2]
        let tip = bill*tipPercent[tipAmountController.selectedSegmentIndex]
        let total = tip + bill
        
        tipAmount.text = String(format: "$%.2f", tip)
        tipTotal.text = String(format: "$%.2f", total)
    }
    
}

