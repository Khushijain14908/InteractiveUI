//
//  ContentView.swift
//  InteractiveUI
//
//  Created by Scholar on 7/23/25.
//

import SwiftUI

struct ContentView: View {
    
    @State private var name: String = ""
    @State private var age: Int = 0
    
    //use a property when need to change it or use later
    @State private var textTitle = "What is your name?"
    
    var body: some View {
        VStack() {
            Text(textTitle)
                .font(.title)
            
            TextField("Type your name here...", text:$name)
                .multilineTextAlignment(.center)
                .font(.title)
                .border(Color.gray, width: 1)
            
            TextField("Type your age here...", value:$age, formatter: NumberFormatter())
                .multilineTextAlignment(.center)
                .font(.title)
                .border(Color.gray, width: 1)
            
            Button("Submit Info"){
                print(name)
                textTitle="Welcome \(name)! You are \(age) years old."
            }
            .font(.title2)
            .buttonStyle(.borderedProminent)
            .tint(.purple)
            }

        .padding()
    }
}

#Preview {
    ContentView()
}
