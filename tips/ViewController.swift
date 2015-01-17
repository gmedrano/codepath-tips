//
//  ViewController.swift
//  tips
//
//  Created by Gilberto Medrano on 1/13/15.
//  Copyright (c) 2015 skowak. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var tipControl: UISegmentedControl!
    @IBOutlet weak var billField: UITextField!
    @IBOutlet weak var tipLabel: UILabel!
    @IBOutlet weak var totalLabel: UILabel!
    
    @IBOutlet weak var tip2Label: UILabel!
    @IBOutlet weak var tip3Label: UILabel!
    @IBOutlet weak var tip4Label: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        tipLabel.text = "$0.00"
        totalLabel.text = "$0.00"
        
        tip2Label.text = "$0.00"
        tip3Label.text = "$0.00"
        tip4Label.text = "$0.00"
        billField.borderStyle = UITextBorderStyle.RoundedRect;
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func onEditingChanged(sender: AnyObject) {
        var tipPercentages = [0.18, 0.2, 0.22]
        var tipPercentage = tipPercentages[tipControl.selectedSegmentIndex]
        var billAmount = (billField.text as NSString).doubleValue
        var tip = billAmount * tipPercentage
        var total = billAmount + tip
        
        tipLabel.text = String(format: "$%.2f", tip)
        totalLabel.text = String(format: "$%.2f", total)
        
        tip2Label.text = String(format: "$%.2f", total / 2)
        tip3Label.text = String(format: "$%.2f", total / 3)
        tip4Label.text = String(format: "$%.2f", total / 4)
    }

    @IBAction func onTap(sender: AnyObject) {
        view.endEditing(true)
    }
}

