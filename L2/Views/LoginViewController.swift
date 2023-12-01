//
//  LoginViewController.swift
//  L2
//
//  Created by Andrii Kuznietsov on 30.11.2023.
//

import UIKit

class LoginVC: UIViewController {
    
    private enum Const {
        static let buttonTitle = "Login"
    }
    
    private lazy var button: Button = {
        let button = Button()
        button.title = Const.buttonTitle
        button.translatesAutoresizingMaskIntoConstraints = false
        button.addTarget(self, action: #selector(pushMainVC), for: .touchUpInside)
        
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
    
    private func createTabBar() -> UITabBarController {
        let tabBar = UITabBarController()
        let firstTab = UINavigationController(rootViewController: MainVC())
        let secondTab = LogoutVC()
        
        firstTab.tabBarItem = UITabBarItem(title: ViewContollers.mainVC, image: UIImage(systemName: SFSymbols.main), tag: 0)
        secondTab.tabBarItem = UITabBarItem(title: ViewContollers.logoutVC, image: UIImage(systemName: SFSymbols.logout), tag: 0)
        tabBar.viewControllers = [firstTab, secondTab]
        
        return tabBar
    }
    
    @objc private func pushMainVC() {
        navigationController?.setViewControllers([createTabBar()], animated: true)
    }
    
}
