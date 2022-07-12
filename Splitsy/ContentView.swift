//
//  ContentView.swift
//  Splitsy
//
//  Created by Hriday Jham on 2022-07-06.
//

import SwiftUI

struct ContentView: View {
    @State private var isAuthenticated = false
    @State private var hasAccount = true
    @State private var email = ""
    @State private var password = ""
    
    var body: some View {
        
        if hasAccount {
            
            NavigationView {
                VStack {
                    TextField("email", text: $email)
                        .padding()
                    TextField("password", text: $password)
                        .padding()
                    Button("Log in") {
                        
                    }
                    .padding()
                    Button("Already have an account? Log in") {
                        hasAccount.toggle()
                    }
                    .padding()
                }
                .navigationTitle("Log in")
                .font(.headline)
            }
            
        } else {
            
            NavigationView {
                VStack {
                    TextField("email", text: $email)
                        .padding()
                    TextField("password", text: $password)
                        .padding()
                    Button("Log in") {
                        
                    }
                    .padding()
                    Button("Already have an account? Log in") {
                        hasAccount.toggle()
                    }
                    .padding()
                }
                .navigationTitle("Log in")
                .font(.headline)
            }
            
        }
        
    }
}



struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
