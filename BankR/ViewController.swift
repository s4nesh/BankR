//
//  ViewController.swift
//  BankR
//
//  Created by Sanesh Gobin on 2023/07/20.
//

import UIKit

class ViewController: UIViewController, UITextFieldDelegate {

    @IBOutlet weak var usernameField: UITextField!
    @IBOutlet weak var passwordField: UITextField!
    @IBOutlet weak var logInButton: UIButton!
    @IBOutlet weak var signUpButton: UIButton!
    
    @IBOutlet weak var alertText: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        usernameField.delegate = self
        passwordField.delegate = self
    }
    
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        textField.resignFirstResponder()
        return true
    }

    func clearFields() {
        usernameField.text = nil
        passwordField.text = nil
        alertText.text = nil
    }
    
    
    @IBAction func loginButtonTapped(_ sender: UIButton) {
        let currentAccount = getAccount(client: usernameField.text)
        if let currentAccount = currentAccount {
            if let passwordField = passwordField.text {
                if currentAccount.clientIDNumber == Int(passwordField) {
                    performSegue(withIdentifier: "loggedIn", sender: sender)
                }
            }
        }
        
    }
    //User as? to downcast to the correct viewcontroller to pass the data. 
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if let loginScreen = segue.destination as? LogInViewController,
           let usernameField = usernameField.text {
            loginScreen.title = "Welcome \(usernameField)"
        }
            
       }
    
    @IBAction func signUpButtonTapped(_ sender: UIButton) {
        performSegue(withIdentifier: "signUpScreen", sender: sender)
    }
    
    @IBAction func unwindToLogin(unwindSegue: UIStoryboardSegue) {
        
    }
}

