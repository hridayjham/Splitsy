//
//  User.swift
//  Splitsy
//
//  Created by Hriday Jham on 2022-07-06.
//

import Foundation


class User: ObservableObject {
    
    @Published var firstName = ""
    @Published var lastName = ""
    @Published var phoneNumber = "0000000000"
    @Published var emailId = ""
    @Published var transactions = [Transaction]()
}

//com.Hriday.Splitsy://dev-fnu666fr.us.auth0.com/ios/com.Hriday.Splitsy/callback
