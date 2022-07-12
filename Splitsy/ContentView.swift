//
//  ContentView.swift
//  Splitsy
//
//  Created by Hriday Jham on 2022-07-06.
//

import SwiftUI
import Firebase
import FirebaseAuth

struct ContentView: View {
    @State private var isAuthenticated = false
    @State private var hasAccount = true
    @State private var email = ""
    @State private var password = ""
    
    var body: some View {
        if isAuthenticated == false {
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
                        Button("Sign up") {
                            hasAccount.toggle()
                        }
                        .padding()
                    }
                }
                .navigationTitle("Log in")
                .font(.headline)
                
            } else {
                
                NavigationView {
                    VStack {
                        TextField("email", text: $email)
                            .padding()
                        TextField("password", text: $password)
                            .padding()
                        Button("Sign Up") {
                                SignUp()
                        }
                        .padding()
                        Button("Already have an account? Log in") {
                            hasAccount.toggle()
                        }
                        .padding()
                    }
                }
                .navigationTitle("Sign up")
                .font(.headline)
                
            }
        } else {
            SuccessfulSignInView()
        }
        
        
    }
}

extension ContentView {
    
    func SignUp() {
        if email.isEmpty {
            print("No email provided")
            return
        } else if password.isEmpty {
            print("No password provided")
            return
        } else {
            Auth.auth().createUser(withEmail: email, password: password) { (authResult, error) in
                guard let user = authResult?.user, error == nil else {
                    print("error: \(error?.localizedDescription)")
                    return
                }
            }
            isAuthenticated = true
        }
    }
    
    func validateFields() {
        if email.isEmpty {
            print("No email provided")
            return
        } else if password.isEmpty {
            print("No password entered")
            return
        } else {
         //   login(email: email, pass: password)
        }
    }
    
    /*func login(email: String, pass: String, completionBlock: @escaping (_ success: Bool) -> Void) {
        Auth.auth().signIn(withEmail: email, password: pass) { (result, error) in
            if let error = error, let _ = AuthErrorCode(rawValue: error._code) {
                completionBlock(false)
            } else {
                completionBlock(true)
            }
        }
        isAuthenticated = true
    }*/
    
    func checkUserInfo() {
            
    }
}



struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
