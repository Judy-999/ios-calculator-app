//
//  Calculator - ViewController.swift
//  Created by yagom. 
//  Copyright © yagom. All rights reserved.
// 

import UIKit

class ViewController: UIViewController {
    @IBOutlet private weak var operandInputLabel: UILabel!
    @IBOutlet weak var operatorInputLabel: UILabel!
    private var currentNumber = "0" {
        didSet {
            operandInputLabel.text = currentNumber
        }
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        resetOperandInputLabel()
        resetOperatorInputLabel()
    }
}

extension ViewController {
    @IBAction func didTapNumberButton(_ sender: UIButton) {
        guard let number = sender.currentTitle else {
            return
        }
        if currentNumber == "0" {
            currentNumber = number
        } else {
            currentNumber.append(number)
        }
    }
    
    @IBAction func didTapHundredButton(_ sender: UIButton) {
        
    }
    
    @IBAction func didTapDotButton(_ sender: UIButton) {
        
    }
    
    @IBAction func didTapOperatorButton(_ sender: UIButton) {
        
    }
    
    @IBAction func didTapCalculateButton(_ sender: UIButton) {
        
    }
    
    @IBAction func didTapClearButton(_ sender: UIButton) {
        
    }
    
    @IBAction func didTapChangeSignButton(_ sender: UIButton) {
        
    }
}

extension ViewController {
    private func resetOperandInputLabel() {
        currentNumber = "0"
    }
    
    private func resetOperatorInputLabel() {
        operatorInputLabel.text = ""
    }
}
