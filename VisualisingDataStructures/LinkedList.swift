//
//  LinkedList.swift
//  VisualisingDataStructures
//
//  Created by MIKHAEL LUKYANOV on 14/03/2023.
//

import Foundation

class LinkedList {
    
    var head: Node?
    var tail: Node?
    
    func add(value: String) {
        let node = Node(value: value)
        if head == nil {
            head = node
        } else if tail == nil {
            head?.next = node
            tail = node
        } else {
            tail?.next = node
            tail = node
        }
    }
    
    func remove(value: String) {
         if head?.value == value {
             head = head?.next
             if head == nil {
                 tail = nil
             }
         } else {
             var curr = head?.next
             var prev = head
             while curr != nil {
                 if curr!.value == value {
                     prev?.next = curr?.next
                     if curr === tail {
                         tail = prev
                     }
                     break
                 }
                 prev = curr
                 curr = curr?.next
             }
         }
     }
    
    func traverse() -> String {
        var currentNode = head
        var display = ""
        while currentNode != nil {
            if head != nil {
                if currentNode!.value == self.head!.value {
                    display = display + "\(currentNode!.value)"
                } else {
                    display = display + " --> \(currentNode!.value)"
                }
                currentNode = currentNode?.next
            }
        }
        return display
    }

    
    
    
    
    
}
