//
//  Calculator - ViewController.swift
//  Created by yagom. 
//  Copyright © yagom. All rights reserved.
// 

import UIKit

class ViewController: UIViewController {

    @IBOutlet private weak var zeroButton: UIButton!
    @IBOutlet private weak var doubleZeroButton: UIButton!
    @IBOutlet private weak var dotButton: UIButton!
    @IBOutlet private weak var oneButton: UIButton!
    @IBOutlet private weak var twoButton: UIButton!
    @IBOutlet private weak var threeButton: UIButton!
    @IBOutlet private weak var fourButton: UIButton!
    @IBOutlet private weak var fiveButton: UIButton!
    @IBOutlet private weak var sixButton: UIButton!
    @IBOutlet private weak var sevenButton: UIButton!
    @IBOutlet private weak var eightButton: UIButton!
    @IBOutlet private weak var nineButton: UIButton!
    
    
    @IBOutlet weak var divideButton: UIButton!
    @IBOutlet weak var multiplyButton: UIButton!
    @IBOutlet weak var subtractButton: UIButton!
    @IBOutlet weak var addButton: UIButton!
    
    @IBOutlet weak var calculationHistoryStackView: UIStackView!
    @IBOutlet private weak var expression: UILabel!
    @IBOutlet weak var arithmetic: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction private func touchUpOperandButton(_ sender: UIButton) {
        guard let operand = matchOperandButton(sender: sender) else {
            return
        }
        
        guard operand != "." || expression.text?.contains(".") == false else {
            return
        }
        
        expression.text?.append(operand)
    }
    
    @IBAction func touchUpOperatorButton(_ sender: UIButton) {
        guard let `operator` = matchOperatorButton(sender: sender) else {
            return
        }
        
        let sign = UILabel()
        sign.textColor = .white
        sign.text = arithmetic.text
        
        let history = UILabel()
        history.text = expression.text
        history.textColor = .white
        
        let newHistory = UIStackView(arrangedSubviews: [sign, history])
        
        guard expression.text != "" else {
            arithmetic.text = `operator`
            return
        }
        
        calculationHistoryStackView.addArrangedSubview(newHistory)
        
        newHistory.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([
            newHistory.trailingAnchor.constraint(equalTo: calculationHistoryStackView.trailingAnchor, constant: 10.0)
        ])
        
        expression.text = ""
        arithmetic.text = `operator`
    }
    
    private func matchOperandButton(sender: UIButton) -> String? {
        switch sender {
        case zeroButton:
            return "0"
        case doubleZeroButton:
            return "00"
        case dotButton:
            return "."
        case oneButton:
            return "1"
        case twoButton:
            return "2"
        case threeButton:
            return "3"
        case fourButton:
            return "4"
        case fiveButton:
            return "5"
        case sixButton:
            return "6"
        case sevenButton:
            return "7"
        case eightButton:
            return "8"
        case nineButton:
            return "9"
        default:
            return nil
        }
    }
    
    private func matchOperatorButton(sender: UIButton) -> String? {
        switch sender {
        case addButton:
            return "+"
        case subtractButton:
            return "−"
        case divideButton:
            return "÷"
        case multiplyButton:
            return "×"
        default:
            return nil
        }
    }
}

