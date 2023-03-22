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
    
    func pop() {
        if items != [] {
            self.items.removeLast()
        }
    }
    
    func peek() -> String {
        guard let topItem = items.last else { fatalError("Stack is empty")}
        return topItem
    }
    
    func display() -> String {
        var display = ""
        for item in self.items {
            if item == self.items.last {
                display = display + "\(item) <------ Tail\n"
            } else {
                display = display + "\(item)\n"
            }
        }
        return display
    }
    
}
