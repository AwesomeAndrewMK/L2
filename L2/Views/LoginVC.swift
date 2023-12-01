//
//  LoginVC.swift
//  L2
//
//  Created by Andrii Kuznietsov on 30.11.2023.
//

import UIKit

class LoginVC: UIViewController {
    
    let button = Button(title: "Login")
    
    override func viewDidLoad() {
        super.viewDidLoad()
        configure()
    }
    
    
    func configure() {
        view.backgroundColor = .systemBackground
        view.addSubview(button)
        
        button.translatesAutoresizingMaskIntoConstraints = false
        button.addTarget(self, action: #selector(pushMainVC), for: .touchUpInside)
        
        NSLayoutConstraint.activate([
            button.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            button.centerYAnchor.constraint(equalTo: view.centerYAnchor)
        ])
    }
    
    
    func createTabBar() -> UITabBarController {
        let tabBar = UITabBarController()
        let firstTab = UINavigationController(rootViewController: MainVC())
        let secondTab = LogoutVC()
        
        firstTab.tabBarItem = UITabBarItem(title: "Main", image: UIImage(systemName: SFSymbols.main), tag: 0)
        secondTab.tabBarItem = UITabBarItem(title: "Logout", image: UIImage(systemName: SFSymbols.logout), tag: 0)
        tabBar.viewControllers = [firstTab, secondTab]
        
        return tabBar
    }
    
    
    @objc func pushMainVC() {
        navigationController?.setViewControllers([createTabBar()], animated: true)
    }
    
}
