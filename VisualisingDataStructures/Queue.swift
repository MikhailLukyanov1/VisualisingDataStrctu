//
//  Queue.swift
//  VisualisingDataStructures
//
//  Created by MIKHAEL LUKYANOV on 14/03/2023.
//

import Foundation

struct Queue {
    
    var items: [String] = []
    
    init(list: [String]) {
        self.items = list
    }
    
    mutating func push(value: String) {
        items.append(value)
    }
    
    mutating func pop() -> String? {
        guard items.count != 0 else {
            return nil
        }
        return items.removeFirst()
    }
    
    func peek() -> String {
        guard let topItem = items.first else { fatalError("Stack is empty")}
        return topItem
    }
}
