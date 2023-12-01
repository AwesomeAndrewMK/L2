//
//  DismissViewController.swift
//  L2
//
//  Created by Andrii Kuznietsov on 01.12.2023.
//

import UIKit

class DismissVC: UIViewController {
    
    private enum Const {
        static let buttonTitle = "Dismiss"
    }
    
    private lazy var dismissButton: Button = {
        let dismissButton = Button()
        dismissButton.title = Const.buttonTitle
        dismissButton.translatesAutoresizingMaskIntoConstraints = false
        dismissButton.addTarget(self, action: #selector(dismissVC), for: .touchUpInside)
        
        return dismissButton
    }()

    override func viewDidLoad() {
        super.viewDidLoad()
        configure()
    }
    
    private func configure() {
        view.backgroundColor = .systemBackground
        view.addSubview(dismissButton)
        
        NSLayoutConstraint.activate([
            dismissButton.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            dismissButton.centerYAnchor.constraint(equalTo: view.centerYAnchor)
        ])
    }
    
    @objc private func dismissVC() {
        dismiss(animated: true)
    }
    
}
