//
//  Node.swift
//  VisualisingDataStructures
//
//  Created by MIKHAEL LUKYANOV on 14/03/2023.
//

import Foundation

public class Node {
    
    var value: String
    var next: Node?
    
    init(value: String, next: Node? = nil) {
        self.value = value
        self.next = next
    }
}


