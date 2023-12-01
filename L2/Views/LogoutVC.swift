//
//  LogoutVC.swift
//  L2
//
//  Created by Andrii Kuznietsov on 30.11.2023.
//

import UIKit

class LogoutVC: UIViewController {

    let button = Button(title: "Logout")

    override func viewDidLoad() {
        super.viewDidLoad()
        configure()
    }
    

    func configure() {
        view.backgroundColor = .systemBackground
        view.addSubview(button)
        
        button.translatesAutoresizingMaskIntoConstraints = false
        button.addTarget(self, action: #selector(logout), for: .touchUpInside)
        
        NSLayoutConstraint.activate([
            button.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            button.centerYAnchor.constraint(equalTo: view.centerYAnchor)
        ])
    }
    
    @objc func logout() {
        navigationController?.setViewControllers([LoginVC()], animated: true)
    }

}
