//
//  ViewController.swift
//  Tip Calculator
//
//  Created by Cesa Salaam on 8/28/18.
//  Copyright © 2018 Cesa Salaam. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var billField: UITextField!
    @IBOutlet weak var tipLabel: UILabel!
    
    @IBOutlet weak var tipController: UISegmentedControl!
    
    @IBOutlet weak var totalBill: UILabel!
    
    let tips = [0.1,0.2,0.3]
    
    override func viewDidLoad() {
        billField.becomeFirstResponder()
    }

    @IBAction func calculateBill(_ sender: Any) {
        let bill = Double(billField.text!) ?? 0
        let tip = bill * tips[tipController.selectedSegmentIndex] as NSNumber
        
        let total = (bill + (bill * tips[tipController.selectedSegmentIndex])) as NSNumber
        
       
        //let newTotal = NumberFormatter.localizedString(from: NSNumber(value: total), number: NumberFormatter.Style.decimal)
        
        //let newTip = NumberFormatter.localizedString(from: NSNumber(value: tip), number: NumberFormatter.Style.decimal)
        //print(newTip)
        
        if (billField.text?.count)! < 8 {
            let formatter = NumberFormatter()
            formatter.numberStyle = .currency
            totalBill.text = formatter.string(from: total)
            tipLabel.text = formatter.string(from: tip)
           // totalBill.text = String(format: "$%.02f", newTotal)
            //tipLabel.text = String(format: "$%.02f", newTip)
        } else{
            billField.deleteBackward()
        }
        
    }
    
    @IBAction func tapped(_ sender: Any) {
        view.endEditing(true)
    }
        
}

