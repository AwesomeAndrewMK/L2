//
//  SLastVC.swift
//  L2
//
//  Created by Andrii Kuznietsov on 02.12.2023.
//

import UIKit

class SLastVC: UIViewController {
    
    @IBAction func homeButton(_ sender: UIButton) {
        navigationController?.popToRootViewController(animated: true)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
}
