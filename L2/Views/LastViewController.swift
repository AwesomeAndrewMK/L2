//
//  LastViewController.swift
//  L2
//
//  Created by Andrii Kuznietsov on 01.12.2023.
//

import UIKit

class LastVC: UIViewController {
    
    private enum Const {
        static let homeButtonTitle = "Home"
        static let detailsButtonTitle = "Details"
        
        static let padding: CGFloat = 20
    }
    
    private lazy var homeButton: Button = {
        let homeButton = Button()
        homeButton.title = Const.homeButtonTitle
        homeButton.translatesAutoresizingMaskIntoConstraints = false
        homeButton.addTarget(self, action: #selector(popToRootVC), for: .touchUpInside)
        
        return homeButton
    }()
    
    private lazy var detailsButton: Button = {
        let detailsButton = Button()
        detailsButton.title = Const.detailsButtonTitle
        detailsButton.translatesAutoresizingMaskIntoConstraints = false
        detailsButton.addTarget(self, action: #selector(presentModalVC), for: .touchUpInside)
        
        return detailsButton
    }()

    override func viewDidLoad() {
        super.viewDidLoad()
        configure()
    }

    private func configure() {
        view.backgroundColor = .systemBackground
        view.addSubview(homeButton)
        view.addSubview(detailsButton)
        
        NSLayoutConstraint.activate([
            homeButton.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            homeButton.centerYAnchor.constraint(equalTo: view.centerYAnchor, constant: -Const.padding),
            
            detailsButton.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            detailsButton.centerYAnchor.constraint(equalTo: view.centerYAnchor, constant: Const.padding),
        ])
    }
    
    @objc private func popToRootVC() {
        navigationController?.popToRootViewController(animated: true)
    }
    
    @objc private func presentModalVC() {
        present(DismissVC(), animated: true)
    }

}
