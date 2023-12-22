//
//  PersonViewController.swift
//  gazCloApp
//
//  Created by Michael Kivo on 06.12.2023.
//

import UIKit

final class AccountViewController: UIViewController, UITextFieldDelegate {
    
    var accountLabel: UILabel = {
        var label = UILabel()
        label.text = "Account"
        label.translatesAutoresizingMaskIntoConstraints = false
        label.textColor = .black
        label.font = .systemFont(ofSize: 20)
        
        return label
    }()
    
    var profileImageView: UIImageView = {
        var imageView = UIImageView(image: UIImage(named: "account_circle"))
        imageView.translatesAutoresizingMaskIntoConstraints = false
        
        return imageView
    }()
    
    var midView: UIView = {
        var midView = UIView()
        midView.translatesAutoresizingMaskIntoConstraints = false
        midView.backgroundColor = UIColor(rgb: 0x697279)
        
        return midView
    }()
    
    var nameLabel: UILabel = {
        var label = UILabel()
        label.text = "Name: "
        label.textColor = .black
        label.translatesAutoresizingMaskIntoConstraints = false
        
        return label
    }()
    
    var nameTextField: UITextField = {
        var textField = UITextField()
        textField.translatesAutoresizingMaskIntoConstraints = false
        textField.placeholder = "John Doe"
        textField.textColor = .black
        textField.keyboardType = .default
        textField.returnKeyType = .go
        
        return textField
    }()

    override func viewDidLoad() {
        super.viewDidLoad()

        view.backgroundColor = .systemGray
        nameTextField.delegate = self
        
        addSubviews()
        setUpConstraints()
    }
    
    private func addSubviews() {
        view.addSubview(accountLabel)
        view.addSubview(profileImageView)
        view.addSubview(midView)
        midView.addSubview(nameLabel)
        midView.addSubview(nameTextField)
    }
    
    private func setUpConstraints() {
        NSLayoutConstraint.activate([
            accountLabel.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor, constant: 45),
            accountLabel.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 155),
            accountLabel.widthAnchor.constraint(equalToConstant: 83),
            accountLabel.heightAnchor.constraint(equalToConstant: 45),
            
            profileImageView.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 130),
            profileImageView.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor, constant: 100),
                
            midView.widthAnchor.constraint(equalToConstant: 320),
            midView.heightAnchor.constraint(equalToConstant: 56),
            midView.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 28),
            midView.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor, constant: 244),
            
            nameLabel.topAnchor.constraint(equalTo: midView.topAnchor, constant: 14),
            nameLabel.leadingAnchor.constraint(equalTo: midView.leadingAnchor, constant: 16),
            
            nameTextField.topAnchor.constraint(equalTo: midView.topAnchor, constant: 14),
            nameTextField.leadingAnchor.constraint(equalTo: midView.leadingAnchor, constant: 125)
        ])
    }
    
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        textField.endEditing(true)
        print(textField.text ?? "")
        return true
    }
    
}
