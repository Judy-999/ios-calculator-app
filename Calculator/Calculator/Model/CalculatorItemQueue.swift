//
//  CalculatorItemQueue.swift
//  Calculator
//
//  Created by 김진태 on 2021/11/09.
//

import Foundation

struct CalculatorItemQueue<T: CalculateItem> {
    typealias List = Array
    
    private var items: List<T>
    
    var count: Int {
        return items.count
    }
    
    var isEmpty: Bool {
        return items.isEmpty
    }
    
    var front: T? {
        return items.first
    }
    
    var rear: T? {
        return items.last
    }
    
    init() {
        self.items = List<T>()
    }
    
    mutating func insert(_ item: T) {
        self.items.append(item)
    }
    
    @discardableResult
    mutating func delete() -> T? {
        guard items.isEmpty == false else { return nil }
        return items.removeFirst()
    }
    
    mutating func clear() {
        items.removeAll()
    }
}