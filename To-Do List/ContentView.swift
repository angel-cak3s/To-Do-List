//
//  ContentView.swift
//  To-Do List
//
//  Created by scholar on 8/15/23.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack {
            HStack {
                // title of app
                Text("To Do List")
                     .font(.system(size: 40))
                     .fontWeight(.black)
                
                Spacer()
                
                Button(action: {
                                    
                }) {
                Text("+")
                }
            }
            .padding()
            Spacer()
        }
        .padding()
        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
