//
//  Transaction.swift
//  Splitsy
//
//  Created by Hriday Jham on 2022-07-06.
//

import Foundation

class Transaction: ObservableObject {
    
    @Published var payee = User()
    @Published var numberOfBorrowers = 0
    @Published var borrowers = [Int]()
    @Published var amount = 0.0
    
}
