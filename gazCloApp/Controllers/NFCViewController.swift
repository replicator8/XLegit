//
//  NFCViewController.swift
//  gazCloApp
//
//  Created by Michael Kivo on 06.12.2023.
//

import UIKit

final class NFCViewController: UIViewController {
    
    var NFCButton: UIButton = {
        var button = UIButton(type: .system)
        button.translatesAutoresizingMaskIntoConstraints = false
        button.addTarget(nil, action: #selector(NFCButtonTapped), for: .touchUpInside)
        
        return button
    }()
    
    var NFCImageView: UIImageView = {
        var imageView = UIImageView(image: UIImage(systemName: "radiowaves.right"))
        imageView.translatesAutoresizingMaskIntoConstraints = false
        
        return imageView
    }()
    
    var infoLabel: UILabel = {
        var label = UILabel()
        label.textColor = .black
        label.font = .systemFont(ofSize: 25)
        label.translatesAutoresizingMaskIntoConstraints = false
        label.isHidden = true
        
        return label
    }()

    override func viewDidLoad() {
        super.viewDidLoad()
        
        view.backgroundColor = .systemGray
        
        addSubviews()
        setUpConstraints()
    }
    
    private func addSubviews() {
        view.addSubview(NFCImageView)
        view.addSubview(NFCButton)
        view.addSubview(infoLabel)
    }
    
    private func setUpConstraints() {
        NSLayoutConstraint.activate([
            NFCButton.centerXAnchor.constraint(equalTo: view.centerXAnchor), 
            NFCButton.centerYAnchor.constraint(equalTo: view.centerYAnchor),
            NFCButton.widthAnchor.constraint(equalToConstant: 80),
            NFCButton.widthAnchor.constraint(equalToConstant: 80),
            
            NFCImageView.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            NFCImageView.centerYAnchor.constraint(equalTo: view.centerYAnchor),
            NFCImageView.widthAnchor.constraint(equalToConstant: 80),
            NFCImageView.heightAnchor.constraint(equalToConstant: 80),
            
            infoLabel.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 112),
            infoLabel.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor, constant: 430)
        ])
    }
    
    @objc private func NFCButtonTapped() {
        infoLabel.isHidden = false
        infoLabel.text = "NFC Scanning..."
    }
}
