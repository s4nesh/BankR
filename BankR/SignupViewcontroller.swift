//
//  SignupViewcontroller.swift
//  BankR
//
//  Created by Sanesh Gobin on 2023/07/22.
//

import Foundation
import UIKit

class SignupViewcontroller: UIViewController, UITextFieldDelegate {
    
    @IBOutlet weak var signupNameInput: UITextField!
    @IBOutlet weak var signupIDNumberInput: UITextField!
    @IBOutlet weak var signupAddressInput: UITextField!
    @IBOutlet weak var alertText: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
        // The delagate method added to dismiss the keyboard when pressing return on the keyboard. Snippet taken from the web
        
        signupNameInput.delegate = self
        signupAddressInput.delegate = self
    }
    
    // Snippet taken from the internet to dismis keyboard. Class also modified: added UITextfieldDelegate
    @objc func textFieldShouldReturn(_ textField: UITextField) -> Bool {
       textField.resignFirstResponder() // dismiss keyboard
       return true
   }
    
    func creatAccount() -> Account? {
        guard let nameInput = signupNameInput.text,
              let IDNumberInput = signupIDNumberInput.text,
              let addressInput = signupAddressInput.text else {return nil}
        let newAccount = Account(clientName: nameInput, clientIDNumber: Int(IDNumberInput), clientAddress: addressInput)
        return newAccount
    }
    
    @IBAction func signupButtonTapped(_ sender: UIButton) {
        print("hello there")
        let createdAccount = creatAccount()
        if let createdAccount = createdAccount {
            createdAccount.assignAccountID()
            accountNumbers.append(createdAccount.accountID)
            accounts.append(createdAccount)
            alertText.text = "Account created"
        } else {
            alertText.text = "All fields required"
        }
        print(accounts)
    }
}
