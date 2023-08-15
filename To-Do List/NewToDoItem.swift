//
//  NewToDoItem.swift
//  To-Do List
//
//  Created by scholar on 8/15/23.
//

import SwiftUI

struct NewToDoItem: View {
    @State var title: String
    @State var isImportant: Bool
    
    var body: some View {
        VStack {
            // title
            Text("Add a new task")
                .font(.title)
                .fontWeight(.bold)
            
            //text field
            TextField("Enter task description", text: $title)
                .padding()
                .background(Color(.systemGroupedBackground))
                .cornerRadius(15)
                .padding()
            
            // toggle
            Toggle(isOn: $isImportant) {
                Text("Is it important?")
            }
            .padding()
            
            // button
            Button(action: {

                        }) {
                            Text("Add")
                        }
                        .padding()
                        .background(Color(.systemGroupedBackground))
                        .cornerRadius(15)
                        .padding()
        }
    }
}

struct NewToDoItem_Previews: PreviewProvider {
    static var previews: some View {
        NewToDoItem(title: "", isImportant: false)
    }
}
