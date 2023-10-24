//
//  toggleView.swift
//  swiftExercices
//
//  Created by Cris Messias on 12/10/23.
//

import SwiftUI
import Foundation

/// ViewModel
struct toggleView: View {
    @Binding var isToggled: Bool //recebe as alterações do toggle
    var body: some View {
        Toggle("Turn", isOn: $isToggled)
    }
}

/// View
struct parentToggleView: View {
    @State private var isToggled = false //Observa as alterações no toggle
    var body: some View {
        VStack {
            toggleView(isToggled: $isToggled)
                .padding()
                .foregroundStyle(.blue)
            Text("Toggle State: \(isToggled ? "On" : "Off")")
                .font(.callout)
                .foregroundStyle(.secondary)
        }
    }
}

//#Preview {
//    parentToggleView()
//}


/// ViewModel
struct customTextField: View {
    @Binding var text: String
    var body: some View {
        VStack {
            TextField("My name is: ", text: $text)
        }
    }
}

struct parentTextField: View {
    @State private var name = ""
    var body: some View {
        VStack {
            if !name.isEmpty {
                Text("Welcome \(name)!")
            }
            customTextField(text: $name)
                .frame(width: .infinity, height: 30)
                .padding(10)
                .background(Color.gray.opacity(0.2))
                .cornerRadius(10)
                .font(.body)
                .foregroundColor(.blue)
        }
        .padding()
    }
}

//#Preview {
//    parentTextField()
//}

/*Exercise 3: Counter App
 
 Build a basic counter app. The parent view should have a counter variable, and the child view should display the counter and allow the user to increment or decrement it. Use @Binding to ensure that the counter is synchronized between the parent and child views.*/

/// ModelView
class CounterModel: ObservableObject {
    @Published var count = 0
    
}

/// childrenView
struct counterApp: View {
    @Binding var counter: Int
    var body: some View {
            VStack {
                Text("Counter: \(counter)")
                    .frame(width: .infinity)
                    .padding()
                    .font(.title)
                    .foregroundStyle(.primary)
                    .bold()
                    .background(Color.black.opacity(0.1))
                    .cornerRadius(10)
                HStack {
                    Button(action: {
                        counter += 1
                    }, label: {
                        Image(systemName: "arrowshape.up.fill")
                    })
                    .font(.title2)
                    .frame(width: .infinity, height: 30)
                    .padding(10)
                    .background(Color.blue.opacity(0.2))
                    .cornerRadius(10)
                    .font(.body)
                    .foregroundColor(.blue)
                    
                    
                    Button(action: {
                        counter -= 1
                    }, label: {
                        Image(systemName: "arrowshape.down.fill")
                    })
                    .font(.title2)
                    .frame(width: .infinity, height: 30)
                        .padding(10)
                        .background(Color.red.opacity(0.2))
                        .cornerRadius(10)
                        .font(.body)
                        .foregroundColor(.red)
            }
        }
    }
}


/// parenteView
struct parentCounterApp: View {
    @StateObject var counterModel = CounterModel()
    var body: some View {
        counterApp(counter: $counterModel.count)
    }
}

//#Preview {
//    parentCounterApp()
//}

