//
//  ViewController.swift
//  QuickrTippr
//
//  Created by Evan Mullen on 1/29/21.
//

import UIKit
import Foundation

class ViewController: UIViewController {

 
    @IBOutlet weak var billField: UITextField!
    @IBOutlet weak var tipLabel: UILabel!
    @IBOutlet weak var totalLabel: UILabel!
    @IBOutlet weak var tipController: UISegmentedControl!

    // Version 1.1.0
    @IBOutlet weak var stepper: UIStepper!
    @IBOutlet weak var numberOfPeople: UILabel!
    @IBOutlet weak var splitTotal: UILabel!
    @IBOutlet weak var splitTip: UILabel!
    
    // Version 1.2.0
    @IBOutlet weak var roundUpButton: UIButton!
    

    override func viewDidLoad() {
        super.viewDidLoad()
        
        
        // Do any additional setup after loading the view.
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }

    @IBAction func onTap(_ sender: Any) {
        view.endEditing(true)
    }
    

    @IBAction func updateTip(_ sender: Any) {
        updateUI()
     
    }
    
    
    @IBAction func splitTotal(_ sender: UIStepper) {
        updateUI()
    }
    
    @IBAction func roundUpButtonPressed(_ sender: UIButton) {
        updateUI()
    }

    func updateUI() -> Void {
        let tipPercentages = [0.10, 0.15, 0.20, 0.25]
        let numPeople = stepper.value
        let bill = Double(billField.text!) ?? 0
        let tip = bill * tipPercentages[tipController.selectedSegmentIndex]
        let total = bill + tip
        
        let totalSplit = total / numPeople
        let tipSplit = tip / numPeople

        // roundUp declaration.
        let roundUp = round(total)
        
        tipLabel.text = String(format: "$%.2f", tip)
        totalLabel.text = String(format: "$%.2f", total)
        splitTotal.text = String(format: "$%.2f", totalSplit)
        splitTip.text = String(format: "$%.2f", tipSplit)
        
        // Display rounded total to total label.
        totalLabel.text = String(format: "$%.2f", roundUp)
        
        numberOfPeople.text = "\(Int(numPeople))"
        
    }
    
}
