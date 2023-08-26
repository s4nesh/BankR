//
//  AccountClass.swift
//  BankR
//
//  Created by Sanesh Gobin on 2023/07/22.
//

import Foundation

let currentDate = Date()


class Account {
    var accountID = 0
    var dateCreated = currentDate
    var currentBalance = 0
    var clientName: String?
    var clientIDNumber: Int?
    var clientAddress: String?
    
    
    init?(clientName: String?, clientIDNumber: Int?, clientAddress: String?){
        if let clientName, let clientIDNumber, let clientAddress {
            self.clientName = clientName
            self.clientIDNumber = clientIDNumber
            self.clientAddress = clientAddress
        } else {
            return nil
        }
    }
    func assignAccountID() {
        let lastAccountNumberPosition = accountNumbers.count - 1
        let previousAccountNumber = accountNumbers[lastAccountNumberPosition]
        accountID = previousAccountNumber + 1
    }
    
}

//class SavingsAccount: Account {
//    override func assignAccountID() {
//        let lasAccountNumberPosition = savingsAccountNumbers.count - 1
//        let previousAccountNumber = savingsAccountNumbers[lasAccountNumberPosition]
//        accountID = previousAccountNumber + 1
//    }
//}


// This comment is to test modification and commit on git
