//
//  ListViewController.swift
//  gazCloApp
//
//  Created by Michael Kivo on 06.12.2023.
//

import UIKit

final class ListViewController: UIViewController {
    
    var label: UILabel = {
        var label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.text = "Clothes Collection will be here..."
        label.textColor = .black
        label.font = .systemFont(ofSize: 20)
        
        return label
    }()

    override func viewDidLoad() {
        super.viewDidLoad()

        view.backgroundColor = .systemGray
        
        addSubViews()
        setUpConstraints()
    }
    
    private func addSubViews() {
        view.addSubview(label)
    }
    
    private func setUpConstraints() {
        NSLayoutConstraint.activate([
            label.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            label.centerYAnchor.constraint(equalTo: view.centerYAnchor),
        ])
    }

}
