//
//  LoginViewController.swift
//  gazCloApp
//
//  Created by Michael Kivo on 06.12.2023.
//

import UIKit
import Firebase
import FirebaseAuth

final class LoginViewController: UIViewController, UITextFieldDelegate {
    
    @IBOutlet weak var emailTextField: UITextField!
    @IBOutlet weak var passwordTextField: UITextField!
    @IBOutlet weak var loginButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        setUp()
    }
    
    private func setUp() {
        loginButton.layer.cornerRadius = 15
        
        emailTextField.delegate = self
        passwordTextField.delegate = self
    }
    
    @IBAction func registerNowButtonTapped(_ sender: UIButton) {
        self.performSegue(withIdentifier: "goToSignUp", sender: self)
    }
    
    @IBAction func loginButtonPressed(_ sender: UIButton) {
        if let email = emailTextField.text, let password = passwordTextField.text {
            Auth.auth().signIn(withEmail: email, password: password) { authResult, error in
                if let e = error {
                    print(e.localizedDescription)
                } else {
                    self.present(MainTabBarController(), animated: true)
                }
            }
        }
    }
    
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        textField.endEditing(true)
        print(textField.text ?? "")
        return true
    }
}

