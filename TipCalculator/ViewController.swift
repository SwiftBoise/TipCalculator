//
//  ViewController.swift
//  TipCalculator
//
//  Created by Curtis Wilcox on 3/18/17.
//  Copyright © 2017 DevFountain LLC. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var billAmountTextField: UITextField!
    @IBOutlet weak var tipSegmentControl: UISegmentedControl!
    @IBOutlet weak var tipLabel: UILabel!
    @IBOutlet weak var totalLabel: UILabel!

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func calculateTip(_ sender: AnyObject) {
        let tipPercentages = [0.15, 0.20, 0.25]

        let bill = Double(billAmountTextField.text!) ?? 0

        let tip = bill * tipPercentages[tipSegmentControl.selectedSegmentIndex]

        let total = bill + tip

        tipLabel.text = String(format: "$%.2f", tip)
        totalLabel.text = String(format: "$%.2f", total)
    }

}

