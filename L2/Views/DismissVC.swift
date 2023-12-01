//
//  DismissVC.swift
//  L2
//
//  Created by Andrii Kuznietsov on 01.12.2023.
//

import UIKit

class DismissVC: UIViewController {
    
    let dismissButton = Button(title: "Dismiss")

    override func viewDidLoad() {
        super.viewDidLoad()
        configure()
    }
    

    func configure() {
        view.backgroundColor = .systemBackground
        view.addSubview(dismissButton)
        
        dismissButton.translatesAutoresizingMaskIntoConstraints = false
        dismissButton.addTarget(self, action: #selector(dismissVC), for: .touchUpInside)
        
        NSLayoutConstraint.activate([
            dismissButton.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            dismissButton.centerYAnchor.constraint(equalTo: view.centerYAnchor)
        ])
    }
    
    @objc func dismissVC() {
        dismiss(animated: true)
    }
    
}
