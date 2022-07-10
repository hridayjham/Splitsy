//
//  LoginView.swift
//  Splitsy
//
//  Created by Hriday Jham on 2022-07-07.
//

import SwiftUI

struct LoginView: View {
    @ObservedObject var user = User()
    @ObservedObject var transaction = Transaction()
    
    var body: some View {
        Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/)
    }
}

//I am genius


struct LoginView_Previews: PreviewProvider {
    static var previews: some View {
        LoginView()
    }
}
