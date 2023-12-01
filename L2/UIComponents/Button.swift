//
//  Button.swift
//  L2
//
//  Created by Andrii Kuznietsov on 30.11.2023.
//

import UIKit

class Button: UIButton {
    
    var title: String!
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        configure()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    init(title: String) {
        super.init(frame: .zero)
        self.title = title
        configure()
    }
    
    
    private func configure() {
        self.setTitle(title, for: .normal)
        self.setTitleColor(.systemBlue, for: .normal)
    }
}
