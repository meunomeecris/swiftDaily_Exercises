//
//  SwiftUIView.swift
//  MatchGame
//
//  Created by Cris Messias on 30/06/23.
//

import SwiftUI

struct Task: Identifiable {
    let id = UUID()
    var name: String
    var isCompleted: Bool = false
}

class TaskStore: ObservableObject {
    @Published var tasks: [Task] = []
    
    func addTask(name: String) {
        let task = Task(name: name)
        tasks.append(task)
    }
    
    func deleteTask(task: Task) {
        if let index = tasks.firstIndex(where: { $0.id == task.id }) {
            tasks.remove(at: index)
        }
    }
    
    func toggleTaskCompletion(task: Task) {
        if let index = tasks.firstIndex(where: { $0.id == task.id }) {
            tasks[index].isCompleted.toggle()
        }
    }
}

struct ContentView: View {
    @ObservedObject var taskStore = TaskStore()
    @State private var newTaskName = ""
    
    var body: some View {
        NavigationView {
            VStack {
                HStack {
                    TextField("New Task", text: $newTaskName)
                        .textFieldStyle(RoundedBorderTextFieldStyle())
                    
                    Button(action: addTask) {
                        Image(systemName: "plus.circle.fill")
                    }
                    .disabled(newTaskName.isEmpty)
                }
                .padding()
                
                List {
                    ForEach(taskStore.tasks) { task in
                        TaskRow(task: task, onDelete: deleteTask, onToggle: toggleTaskCompletion)
                    }
                }
            }
            .navigationBarTitle("Task List")
        }
    }
    
    func addTask() {
        taskStore.addTask(name: newTaskName)
        newTaskName = ""
    }
    
    func deleteTask(task: Task) {
        taskStore.deleteTask(task: task)
    }
    
    func toggleTaskCompletion(task: Task) {
        taskStore.toggleTaskCompletion(task: task)
    }
}

struct TaskRow: View {
    let task: Task
    let onDelete: (Task) -> Void
    let onToggle: (Task) -> Void
    
    var body: some View {
        HStack {
            Button(action: { onToggle(task) }) {
                Image(systemName: task.isCompleted ? "checkmark.circle.fill" : "circle")
            }
            
            Text(task.name)
                .strikethrough(task.isCompleted)
                .foregroundColor(task.isCompleted ? .gray : .primary)
            
            Spacer()
            
            Button(action: { onDelete(task) }) {
                Image(systemName: "trash")
                    .foregroundColor(.red)
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
