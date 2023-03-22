//
//  StackView.swift
//  VisualisingDataStructures
//
//  Created by MIKHAEL LUKYANOV on 14/03/2023.
//

import SwiftUI

struct StackView: View {
    
    @State private var stack = Stack(list: [])
    @State private var display = ""
    @State private var count = 1
    @State private var numToRemove: String = ""
    
    var body: some View {
        
        VStack {
 
            
            Text(display)
            
            HStack(spacing: 200) {
                Button("Push", action: {
                    stack.push(value: String(count))
                    count += 1
                    display = stack.display()
                    
                })

                Button("Pop", action: {
                    stack.pop()
                    display = stack.display()
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
