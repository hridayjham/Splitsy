//
//  ContentView.swift
//  Splitsy
//
//  Created by Hriday Jham on 2022-07-06.
//

import SwiftUI
import Auth0

struct ContentView: View {
    @State private var isAuthenticated = false
    
    var body: some View {
        
        if isAuthenticated {
            
            VStack {
                Text("Logged In")
                    .padding()
                
                Button("Log Out") {
                    logout()
                }
                .padding()
            }
            
        } else {
            
            VStack {
                Text("Log in page")
                    .padding()
                Button("Log in") {
                    login()
                }
                .padding()
            }
            
        }
        
    }
}

extension ContentView {
    
    func login() {
        Auth0
              .webAuth()
              .start { result in
                switch result {
                  
                  case .failure(let error):
                    print("Failed with: \(error)")
                  
                  case .success(let credentials):
                    self.isAuthenticated = true
                    print("Credentials: \(credentials)")
                    print("ID token: \(credentials.idToken)")
                }
              }
    }
    
    func logout() {
        Auth0
              .webAuth()
              .clearSession { result in
                switch result {
                  
                  case .failure(let error):
                    print("Failed with: \(error)")
                    
                  case .success:
                    self.isAuthenticated = false
                }
              }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
