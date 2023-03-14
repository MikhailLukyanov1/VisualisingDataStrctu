//
//  StackView.swift
//  VisualisingDataStructures
//
//  Created by MIKHAEL LUKYANOV on 14/03/2023.
//

import SwiftUI

struct StackView: View {
    
    @State private var stack = Stack(list: ["a", "b", "c", "d", "e"])
    
    var body: some View {
        
        VStack {
 
            List(stack.items, id: \.self) { item in
                if item == stack.items.last {
                    Text(item + "  <-----  Head")
                }
                else {
                    Text(item)
                }
            }
            
            HStack(spacing: 200) {
                Button("Push", action: {
                    stack.push(value: String(Int.random(in: 1..<100)))
                    print(stack.items)
                    
                })
                
                Button("Pop", action: {
                    stack.pop()
                    print(stack.items)
                })
            }

        }
    }
}

struct StackView_Previews: PreviewProvider {
    static var previews: some View {
        StackView()
    }
}
