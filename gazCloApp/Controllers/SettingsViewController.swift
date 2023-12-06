//
//  SettingsViewController.swift
//  gazCloApp
//
//  Created by Michael Kivo on 06.12.2023.
//

import UIKit

final class SettingsViewController: UIViewController {
    
    var trashIcon: UIImageView = {
       var imageView = UIImageView(image: UIImage(named: "Icon"))
        imageView.translatesAutoresizingMaskIntoConstraints = false
        
        return imageView
    }()
    
    var labelSignOut: UILabel = {
        var label = UILabel()
        label.text = "Sign Out"
        label.translatesAutoresizingMaskIntoConstraints = false
        label.font = UIFont(name: "Impact", size: 24)
        
        return label
    }()

    override func viewDidLoad() {
        super.viewDidLoad()

        view.backgroundColor = .systemGray
        
        addSubViews()
        setUpConstraints()
    }
    
    private func addSubViews() {
        view.addSubview(trashIcon)
        view.addSubview(labelSignOut)
    }
    
    private func setUpConstraints() {
        NSLayoutConstraint.activate([
            trashIcon.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 59),
            trashIcon.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor, constant: 90),
            
            labelSignOut.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor, constant: 101),
            labelSignOut.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 127)
        ])
    }
    
}
