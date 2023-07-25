import UIKit
import Foundation

let currentDate = Date()
var accountNumbers = [100001]
var savingsAccountNumbers = [200001]

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

class SavingsAccount: Account {
    override func assignAccountID() {
        let lasAccountNumberPosition = savingsAccountNumbers.count - 1
        let previousAccountNumber = savingsAccountNumbers[lasAccountNumberPosition]
        accountID = previousAccountNumber + 1
    }
}


var accounts = [Account]()

var newAccount = Account(clientName: "Sanesh", clientIDNumber: 3451, clientAddress: "Todd street")

func makeReference(with account: Account) {
    var 
}




//
//struct Account {
//    var accountID: Int?
//    var clientFirstName: String?
//    var clientLastName: String?
//    var clientIDNumber: Int?
//    
//    init?(accountID: Int?, clientFirstName: String?, clientLastName: String?, clientIDNumber: Int?) {
//        if let accountID,
//           let clientFirstName,
//           let clientLastName,
//           let clientIDNumber {
//            self.accountID = accountID
//            self.clientFirstName = clientFirstName
//            self.clientLastName = clientLastName
//            self.clientIDNumber = clientIDNumber
//        } else {
//            return nil
//        }
//    }
//}



