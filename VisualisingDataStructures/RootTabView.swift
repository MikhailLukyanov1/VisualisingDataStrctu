//
//  RootTabView.swift
//  VisualisingDataStructures
//
//  Created by MIKHAEL LUKYANOV on 19/03/2023.
//

import SwiftUI

struct RootTabView: View {
    var body: some View {
        TabView {
            StackView()
                .tabItem {
                    Text("Stack")
                }
            QueueView()
                .tabItem {
                    Text("Queue")
                }
            LinkedListView()
                .tabItem {
                    Text("Linked List")
                }
            
        }
    }
}

struct RootTabView_Previews: PreviewProvider {
    static var previews: some View {
        RootTabView()
    }
}
