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
    
    @Binding var showNewTask : Bool
    @Environment(\.managedObjectContext) var context
    
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
                self.addTask(title: self.title, isImportant: self.isImportant)
                self.showNewTask = false

                        }) {
                            Text("Add")
                        }
                        .padding()
                        .background(Color(.systemGroupedBackground))
                        .cornerRadius(15)
                        .padding()
        }
    }
    private func addTask(title: String, isImportant: Bool = false) {
            
        let task = ToDo(context: context)
        task.id = UUID()
        task.title = title
        task.isImportant = isImportant
                
        do {
           try context.save()
        } catch {
           print(error)
            }
        }
}

struct NewToDoItem_Previews: PreviewProvider {
    static var previews: some View {
        NewToDoItem(title: "", isImportant: false, showNewTask: .constant(true))
    }
}
