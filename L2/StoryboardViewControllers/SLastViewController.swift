//
//  SLastViewController.swift
//  L2
//
//  Created by Andrii Kuznietsov on 02.12.2023.
//

import UIKit

class SLastViewController: UIViewController {
    
    @IBAction func homeButton(_ sender: UIButton) {
        navigationController?.popToRootViewController(animated: true)
    }
}