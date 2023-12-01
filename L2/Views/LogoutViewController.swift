//
//  LogoutViewController.swift
//  L2
//
//  Created by Andrii Kuznietsov on 30.11.2023.
//

import UIKit

class LogoutVC: UIViewController {
    
    private enum Const {
        static let buttonTitle = "Logout"
    }

    private lazy var button: Button = {
        let button = Button()
        button.title = Const.buttonTitle
        button.translatesAutoresizingMaskIntoConstraints = false
        button.addTarget(self, action: #selector(logout), for: .touchUpInside)
        
        return button
    }()

    override func viewDidLoad() {
        super.viewDidLoad()
        configure()
    }

    private func configure() {
        view.backgroundColor = .systemBackground
        view.addSubview(button)
        
        NSLayoutConstraint.activate([
            button.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            button.centerYAnchor.constraint(equalTo: view.centerYAnchor)
        ])
    }
    
    @objc private func logout() {
        navigationController?.setViewControllers([LoginVC()], animated: true)
    }

}
