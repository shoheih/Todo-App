//
//  ContentView.swift
//  Todo App
//
//  Created by Shohei Hayashi on 2020/06/08.
//  Copyright © 2020 Shohei Hayashi. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    // MARK: - PROPERTIES
    
    @State private var showingAddTodoView: Bool = false
    
    // MARK: - BODY
    
    var body: some View {
        NavigationView {
            List(/*@START_MENU_TOKEN@*/0 ..< 5/*@END_MENU_TOKEN@*/) { item in
                Text("Hello, World!")
            } //: LIST
                .navigationBarTitle("Todo", displayMode: .inline)
                .navigationBarItems(trailing:
                    Button(action: {
                        self.showingAddTodoView.toggle()
                    }) {
                        Image(systemName: "plus")
                    } //: ADD BUTTON
                        .sheet(isPresented: $showingAddTodoView) {
                            AddTodoView()
                    }
                )
        } //: NAVIGATION
    }
}

// MARK: - PREVIEW
struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
