//
//  MiddleVC.swift
//  L2
//
//  Created by Andrii Kuznietsov on 01.12.2023.
//

import UIKit

class MiddleVC: UIViewController {

    let button = Button(title: "Next")

    override func viewDidLoad() {
        super.viewDidLoad()
        configure()
    }
    
    
    func configure() {
        view.backgroundColor = .systemBackground
        view.addSubview(button)
        button.translatesAutoresizingMaskIntoConstraints = false
        
        button.addTarget(self, action: #selector(pushLastVC), for: .touchUpInside)
        
        
        NSLayoutConstraint.activate([
            button.centerYAnchor.constraint(equalTo: view.centerYAnchor),
            button.centerXAnchor.constraint(equalTo: view.centerXAnchor)
        ])
    }
    
    
    @objc func pushLastVC() {
        navigationController?.pushViewController(LastVC(), animated: true)
    }

}
