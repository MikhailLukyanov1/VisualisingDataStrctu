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
    
    func pop() -> String? {
        if items != [] {
            return items.removeLast()
        }
        else {
            return nil
        }
    }
    
    func peek() -> String {
        guard let bottomItem = items.first else { fatalError("Stack is empty")}
        return bottomItem
    }
        
    
    
}
