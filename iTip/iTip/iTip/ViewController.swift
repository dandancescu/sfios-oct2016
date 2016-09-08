//
//  ViewController.swift
//  iTip
//
//  Created by Dan Dancescu on 9/8/16.
//  Copyright © 2016 Dan Dancescu. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var tipControl: UISegmentedControl!
    @IBOutlet weak var billField: UITextField!
    @IBOutlet weak var totalLabel: UILabel!
    @IBOutlet weak var tipLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func onTap(sender: AnyObject) {
        view.endEditing(true)
    }

    @IBAction func tipPercentageChanged(sender: AnyObject) {
        calculateTip(sender)
    }

    @IBAction func calculateTip(sender: AnyObject) {
        
        let tipPercentages = [0.15, 0.17, 0.20]
        let bill = Double(billField.text!) ?? 0
        let tip = bill * tipPercentages[tipControl.selectedSegmentIndex]
        let total = bill + tip
        
        tipLabel.text = String(format: "$%.2f", tip)     // "$\(tip)"
        totalLabel.text = String(format: "$%.2f", total)   // "$\(total)"
    }
}

