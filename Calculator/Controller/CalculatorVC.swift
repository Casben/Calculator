//
//  CalculatorVC.swift
//  Calculator
//
//  Created by Herbert Dodge on 3/26/21.
//

import UIKit

class CalculatorVC: UIViewController {

    @IBOutlet weak var displayLabel: UILabel!
    private var isFinishedTypingNumber: Bool = true
    private var displayValue: Double {
        get {
            guard let number = Double(displayLabel.text!) else {
                fatalError("Cannot convert display label to a Double.")
            }
            return number
        }
        set {
            displayLabel.text = String(newValue)
        }
    }

    
    @IBAction func calcButtonPressed(_ sender: UIButton) {
        print(sender.titleLabel?.text!)
    }
    
    @IBAction func numberButtonPressed(_ sender: UIButton) {
        print(sender.titleLabel?.text!)
    }
    
}
