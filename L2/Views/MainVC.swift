//
//  MainVC.swift
//  L2
//
//  Created by Andrii Kuznietsov on 30.11.2023.
//

import UIKit

class MainVC: UIViewController {
    
    let button = Button(title: "Next")

    override func viewDidLoad() {
        super.viewDidLoad()
        configure()
    }
    
    
    func configure() {
        view.backgroundColor = .systemBackground
        view.addSubview(button)
        button.translatesAutoresizingMaskIntoConstraints = false
        
        button.addTarget(self, action: #selector(pushMiddleVC), for: .touchUpInside)
        
        
        NSLayoutConstraint.activate([
            button.centerYAnchor.constraint(equalTo: view.centerYAnchor),
            button.centerXAnchor.constraint(equalTo: view.centerXAnchor)
        ])
    }
    
    
    @objc func pushMiddleVC() {
        navigationController?.pushViewController(MiddleVC(), animated: true)
    }

}

