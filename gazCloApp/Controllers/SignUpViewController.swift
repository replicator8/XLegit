//
//  SignUpViewController.swift
//  gazCloApp
//
//  Created by Michael Kivo on 06.12.2023.
//

import UIKit
import Firebase
import FirebaseAuth

final class SignUpViewController: UIViewController, UITextFieldDelegate {
    
    @IBOutlet weak var registerButton: UIButton!
    @IBOutlet weak var emailTextField: UITextField!
    @IBOutlet weak var passwordTextField: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
            
        setUp()
    }
    
    private func setUp() {
        registerButton.layer.cornerRadius = 15
        
        emailTextField.delegate = self
        passwordTextField.delegate = self
    }
    
    @IBAction func registerButtonPressed(_ sender: UIButton) {
        
        if let email = emailTextField.text, let password = passwordTextField.text {
            Auth.auth().createUser(withEmail: email, password: password) { authResult, error in
                if let e = error {
                    print(e.localizedDescription)
                } else {
                    self.present(MainTabBarController(), animated: true)
                }
            }
        }
    }
    
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        print(textField.text ?? "")
        textField.endEditing(true)
        return true
    }
    
}
