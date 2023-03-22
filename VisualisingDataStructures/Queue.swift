//
//  Queue.swift
//  VisualisingDataStructures
//
//  Created by MIKHAEL LUKYANOV on 14/03/2023.
//

import Foundation

class Queue {
    
    var items: [String] = []
    
    init(list: [String]) {
        self.items = list
    }
    
    func push(value: String) {
        items.append(value)
    }
    
    func pop() {
        if items != [] {
            self.items.removeFirst()
        }
    }
    
    func peek() -> String {
        guard let bottomItem = items.first else { fatalError("Stack is empty")}
        return bottomItem
    }
    
    func display() -> String {
        var display = ""
        for item in self.items {
            if item == self.items.last {
                display = display + "\(item) <------ Tail\n"
            } else if item == self.items.first {
                display = display + "\(item) <------ Head\n"
            } else {
                display = display + "\(item)\n"
            }
        }
        return display
    }
        
    
    
}
