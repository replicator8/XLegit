//
//  SignUpViewController.swift
//  gazCloApp
//
//  Created by Michael Kivo on 06.12.2023.
//

import UIKit

final class SignUpViewController: UIViewController {
    
    @IBOutlet weak var registerButton: UIButton!
    @IBOutlet weak var email: UITextField!
    @IBOutlet weak var password: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
            
        setUp()
    }
    
    private func setUp() {
        view.backgroundColor = .systemGray
        email.backgroundColor = .white
        password.backgroundColor = .white
        registerButton.layer.cornerRadius = 15
    }
    
    @IBAction func registerButtonPressed(_ sender: UIButton) {
        view.endEditing(true)
        
        self.present(MainTabBarController(), animated: true)
    }
    
}
