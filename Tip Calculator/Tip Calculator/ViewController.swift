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

    @IBAction func calculateBill(_ sender: Any) {
        let bill = Double(billField.text!) ?? 0
        let tip = bill * tips[tipController.selectedSegmentIndex]
        let total = bill + tip
       
        if (billField.text?.count)! < 8 {
            totalBill.text = String(format: "$%.02f", total)
            tipLabel.text = String(format: "$%.02f", tip)
        } else{
            billField.deleteBackward()
        }
        
    }
    
    
    @IBAction func tapped(_ sender: Any) {
        view.endEditing(true)
    }
        
}

