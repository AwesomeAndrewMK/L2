//
//  SLogogutViewController.swift
//  L2
//
//  Created by Andrii Kuznietsov on 02.12.2023.
//

import UIKit

class SLogogutViewController: UIViewController {
    
    @IBAction func logoutButton(_ sender: UIButton) {
        navigationController?.popViewController(animated: true)
    }
}
