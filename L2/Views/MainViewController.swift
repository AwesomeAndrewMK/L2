//
//  MainViewController.swift
//  L2
//
//  Created by Andrii Kuznietsov on 30.11.2023.
//

import UIKit

class MainVC: UIViewController {
    
    private enum Const {
        static let buttonTitle = "Next"
    }
    
    private lazy var button: Button = {
        let button = Button()
        button.title = Const.buttonTitle
        button.translatesAutoresizingMaskIntoConstraints = false
        button.addTarget(self, action: #selector(pushMiddleVC), for: .touchUpInside)
        
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
            button.centerYAnchor.constraint(equalTo: view.centerYAnchor),
            button.centerXAnchor.constraint(equalTo: view.centerXAnchor)
        ])
    }
    
    @objc private func pushMiddleVC() {
        navigationController?.pushViewController(MiddleVC(), animated: true)
    }

}

