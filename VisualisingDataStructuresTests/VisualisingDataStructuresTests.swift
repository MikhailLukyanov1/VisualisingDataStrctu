//
//  VisualisingDataStructuresTests.swift
//  VisualisingDataStructuresTests
//
//  Created by MIKHAEL LUKYANOV on 14/03/2023.
//

import XCTest
@testable import VisualisingDataStructures

final class VisualisingDataStructuresTests: XCTestCase {

    func testStackWillPushItems() {
        
        let stack = Stack(list: ["1", "2"])
        
        stack.push(value: "3")
        
        XCTAssertEqual(stack.items, ["1","2","3"])
    }
    
    func testStackWillPopItems() {
        
        let stack = Stack(list: ["1", "2", "3"])
        
        stack.pop()
        
        XCTAssertEqual(stack.items, ["1","2"])
    }
    
    func testStackPeekMethodWorks() {
        
        let stack = Stack(list: ["1", "2", "3"])
        
        XCTAssertEqual(stack.peek(), "3")
    }
    
    func testQueueWillPushItems() {
        
        let queue = Queue(list: ["1", "2"])
        
        queue.push(value: "3")
        
        XCTAssertEqual(queue.items, ["1","2","3"])
    }
    
    func testQueueWillPopItems() {
        
        let queue = Queue(list: ["1", "2", "3"])
        
        queue.pop()
        
        XCTAssertEqual(queue.items, ["2","3"])
    }
    
    func testQueuePeekMethodWorks() {
        
        let queue = Queue(list: ["1", "2", "3"])
        
        XCTAssertEqual(queue.peek(), "1")
    }
    

}
