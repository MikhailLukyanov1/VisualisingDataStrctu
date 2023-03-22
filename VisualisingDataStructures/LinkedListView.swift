//
//  LinkedListView.swift
//  VisualisingDataStructures
//
//  Created by MIKHAEL LUKYANOV on 19/03/2023.
//

import SwiftUI

struct LinkedListView: View {
    
    @State private var linkedList = LinkedList()
    @State private var display = ""
    @State private var count = 1
    @State private var numToRemove: String = ""
    
    var body: some View {
        
        VStack {
            Text(display)
                .padding(25)

            
            VStack(alignment: .center, spacing: 20) {
                Button("Add", action: {
                    linkedList.add(value: String(count))
                    count += 1
                    display = linkedList.traverse()
                    
                })
                
                HStack {
                    Button("Remove", action: {
                        linkedList.remove(value: numToRemove)
                        display = linkedList.traverse()
                    })
                    TextField("Number To Remove", text: $numToRemove)
                        .textFieldStyle(.roundedBorder)
                }
                .offset(x: 100)
    
                
            }

            
        }
    }
}

struct LinkedListView_Previews: PreviewProvider {
    static var previews: some View {
        LinkedListView()
    }
}
