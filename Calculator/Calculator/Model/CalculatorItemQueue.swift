//
//  CalculatorItemQueue.swift
//  Calculator
//
//  Created by si won kim on 2021/11/09.
//

import Foundation

protocol CalculateItem {
    
}

extension Character: CalculateItem {
    
}

struct CalculatorItemQueue<T: CalculateItem> {
    private var calculatorItems = [T]()
    
    mutating func enqueue(_ item: T) {
        calculatorItems.append(item)
    }
    
    mutating func dequeue() -> T? {
        guard calculatorItems.isEmpty == false else {
            return nil
        }
        
        let firstItem = calculatorItems.first
        calculatorItems = calculatorItems.reversed()
        calculatorItems.removeLast()
        calculatorItems = calculatorItems.reversed()
        
        return firstItem
    }
    
    mutating func removeAll() {
        calculatorItems.removeAll()
    }
}
