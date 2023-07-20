//
//  ViewController.swift
//  BankR
//
//  Created by Sanesh Gobin on 2023/07/20.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var usernameField: UITextField!
    @IBOutlet weak var passwordField: UITextField!
    @IBOutlet weak var logInButton: UIButton!
    @IBOutlet weak var signUpButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    
    @IBAction func loginButtonTapped(_ sender: UIButton) {
        performSegue(withIdentifier: "loggedIn", sender: sender)
    }
    
    @IBAction func signUpButtonTapped(_ sender: UIButton) {
        performSegue(withIdentifier: "signUpScreen", sender: sender)
    }
    
}

