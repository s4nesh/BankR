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
    @IBOutlet weak var barButtonItem: UIBarButtonItem!
    @IBOutlet weak var signupButton: UIButton!
    override func viewDidLoad() {
        super.viewDidLoad()
        // The delagate method added to dismiss the keyboard when pressing return on the keyboard. Snippet taken from the web
        barButtonItem.title = "Cancel"
        signupNameInput.delegate = self
        signupAddressInput.delegate = self
    }
    
    // Snippet taken from the internet to dismis keyboard. Class also modified: added UITextfieldDelegate
    @objc func textFieldShouldReturn(_ textField: UITextField) -> Bool {
       textField.resignFirstResponder() // dismiss keyboard
       return true
   }
    
    
    @IBAction func signupButtonTapped(_ sender: UIButton) {
        print("hello there")
        let createdAccount = createAccount(nameInput: signupNameInput.text, idNumberInput: signupIDNumberInput.text, addressInput: signupAddressInput.text)
        if let createdAccount = createdAccount {
            processNewAccount(for: createdAccount)
            barButtonItem.title = "Done"
            alertText.text = "Account created"
            signupButton.isEnabled = false
            
        } else {
            alertText.text = "All fields required"
        }
        print(accounts)
    }
}
