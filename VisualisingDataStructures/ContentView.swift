//
//  ContentView.swift
//  VisualisingDataStructures
//
//  Created by MIKHAEL LUKYANOV on 14/03/2023.
//

import SwiftUI

struct ContentView: View {
    
    @State private var stack = Stack(list: ["3","2","1"])
    @State private var linkedList = LinkedList(head: Node(value: "1"))
    

    
    var body: some View {
        VStack {

            StackView()
            
        }
        .padding()
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
