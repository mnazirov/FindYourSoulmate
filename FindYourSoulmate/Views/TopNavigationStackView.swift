//
//  TopNavigationStackView.swift
//  FindYourSoulmate
//
//  Created by Marat on 06.10.2021.
//

import UIKit

class TopNavigationStackView: UIStackView {

    override init(frame: CGRect) {
        super.init(frame: frame)
        
        distribution = .fillEqually
        heightAnchor.constraint(equalToConstant: 70).isActive = true
        
        let imageNavigation = [#imageLiteral(resourceName: "03_6"), #imageLiteral(resourceName: "03_7"), #imageLiteral(resourceName: "03_8")].map { image -> UIView in
            let button = UIButton(type: .system)
            button.setImage(image.withRenderingMode(.alwaysOriginal), for: .normal)
            return button
        }
        
        imageNavigation.forEach { navigationView in
            addArrangedSubview(navigationView)
        }
    }
    
    required init(coder: NSCoder) {
        fatalError()
    }
}
