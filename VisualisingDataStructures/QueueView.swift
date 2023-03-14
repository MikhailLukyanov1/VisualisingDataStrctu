//
//  QueueView.swift
//  VisualisingDataStructures
//
//  Created by MIKHAEL LUKYANOV on 14/03/2023.
//

import SwiftUI

struct QueueView: View {
    
    @State private var queue = Queue(list: ["a", "b", "c", "d", "e"])
    
    var body: some View {
        
        VStack {
 
            List(queue.items, id: \.self) { item in
                if item == queue.items.last {
                    Text(item + "  <-----  Tail")
                    
                }
                else if item == queue.items.first {
                    Text(item + "  <-----  Head")
                }
                else {
                    Text(item)
                }
            }
            
            HStack(spacing: 200) {
                Button("Push", action: {
                    queue.push(value: String(Int.random(in: 1..<100)))
                    print(queue.items)
                })
                
                Button("Pop", action: {
                    queue.pop()
                    print(queue.items)
                })
            }
            

        }
    }
}

struct QueueView_Previews: PreviewProvider {
    static var previews: some View {
        QueueView()
    }
}
