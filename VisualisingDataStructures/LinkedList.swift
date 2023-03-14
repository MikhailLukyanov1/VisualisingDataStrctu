//
//  LinkedList.swift
//  VisualisingDataStructures
//
//  Created by MIKHAEL LUKYANOV on 14/03/2023.
//

import Foundation

struct LinkedList {
    
    var head: Node?
    var tail: Node?
    


    
    mutating func append(value: String) {
        
        if head == nil {
            head = Node(value: value)
        }
        else if head != nil && tail == nil {
            tail = Node(value: value)
            head!.next = Node(value: value)
        }
        else {
            tail!.next = Node(value: value)
            tail = Node(value: value)
        }
    }
    
    func display() {
        var currentNode = head
        print(currentNode!.value)
        while currentNode!.value != tail!.value {
            currentNode = currentNode!.next
            print(currentNode!.value)
        }
    }
    
    
    
}
