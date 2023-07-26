//
//  Functions.swift
//  BankR
//
//  Created by Sanesh Gobin on 2023/07/22.
//

import Foundation

func createAccount(nameInput: String?, idNumberInput: String?, addressInput: String?) -> Account? {
    guard let nameInput = nameInput,
          let idNumberInput = idNumberInput,
          let addressInput = addressInput else {return nil}
    
    let newAccount = Account(clientName: nameInput, clientIDNumber: Int(idNumberInput), clientAddress: addressInput)
    return newAccount
}



func processNewAccount(for account: Account) {
    account.assignAccountID()
    accountNumbers.append(account.accountID)
    accounts.append(account)
}


// Login function

func clientExistOnDatabase(clientName: String?, clientID: Int?) {
   
}
