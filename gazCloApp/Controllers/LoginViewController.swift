//
//  LoginViewController.swift
//  gazCloApp
//
//  Created by Michael Kivo on 06.12.2023.
//

import UIKit

final class LoginViewController: UIViewController {

    @IBOutlet weak var email: UITextField!
    @IBOutlet weak var password: UITextField!
    @IBOutlet weak var loginButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        setUp()
    }
    
    private func setUp() {
        view.backgroundColor = .systemGray
        email.backgroundColor = .white
        password.backgroundColor = .white
        loginButton.layer.cornerRadius = 15
    }
    
    @IBAction func registerNowButtonTapped(_ sender: UIButton) {
        self.performSegue(withIdentifier: "goToSignUp", sender: self)
    }
    @IBAction func loginButtonPressed(_ sender: UIButton) {
        view.endEditing(true)
        
        self.present(MainTabBarController(), animated: true)
    }
}
