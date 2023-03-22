//
//  QueueView.swift
//  VisualisingDataStructures
//
//  Created by MIKHAEL LUKYANOV on 14/03/2023.
//

import SwiftUI

struct QueueView: View {
    
    @State private var queue = Queue(list: [])
    @State private var display = ""
    @State private var count = 1
    
    var body: some View {
        
        VStack {
            Text(display)
                
            HStack(spacing: 200) {
                Button("Push", action: {
                    queue.push(value: String(count))
                    count += 1
                    display = queue.display()
                    
                })
                
                Button("Pop", action: {
                    queue.pop()
                    display = queue.display()
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
