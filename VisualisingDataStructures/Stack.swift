//
//  Stack.swift
//  VisualisingDataStructures
//
//  Created by MIKHAEL LUKYANOV on 14/03/2023.
//

import Foundation

class Stack {
    
    var items: [String] = []
    
    init(list: [String]) {
        self.items = list
    }
    
    func push(value: String) {
        items.append(value)
    }
    
    func pop() -> String? {
        
        return items.popLast()
    }
    
    func peek() -> String {
        guard let topItem = items.last else { fatalError("Stack is empty")}
        return topItem
    }
    
}
