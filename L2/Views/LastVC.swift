//
//  LastVC.swift
//  L2
//
//  Created by Andrii Kuznietsov on 01.12.2023.
//

import UIKit

class LastVC: UIViewController {
    
    let homeButton = Button(title: "Home")
    let detailsButton = Button(title: "Details")

    override func viewDidLoad() {
        super.viewDidLoad()
        configure()
    }
    

    func configure() {
        view.backgroundColor = .systemBackground
        view.addSubview(homeButton)
        view.addSubview(detailsButton)
        
        homeButton.translatesAutoresizingMaskIntoConstraints = false
        detailsButton.translatesAutoresizingMaskIntoConstraints = false
        
        homeButton.addTarget(self, action: #selector(popToRootVC), for: .touchUpInside)
        detailsButton.addTarget(self, action: #selector(presentModalVC), for: .touchUpInside)
        
        NSLayoutConstraint.activate([
            homeButton.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            homeButton.centerYAnchor.constraint(equalTo: view.centerYAnchor, constant: -20),
            
            detailsButton.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            detailsButton.centerYAnchor.constraint(equalTo: view.centerYAnchor, constant: 20),
        ])
    }
    
    
    @objc func popToRootVC() {
        navigationController?.popToRootViewController(animated: true)
    }
    
    @objc func presentModalVC() {
        present(DismissVC(), animated: true)
    }

}
