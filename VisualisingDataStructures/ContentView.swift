//
//  ContentView.swift
//  VisualisingDataStructures
//
//  Created by MIKHAEL LUKYANOV on 14/03/2023.
//

import SwiftUI

struct ContentView: View {
    
    @State private var stack = Stack(list: ["2","1"])

    

    
    var body: some View {
        VStack {
            Button("Push", action:{
                stack.push(value: "2")
                print(stack.items)
                print(stack.pop())
            })

            
        }
        .padding()
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
