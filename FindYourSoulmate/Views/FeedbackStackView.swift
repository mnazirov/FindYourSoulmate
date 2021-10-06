//
//  feedbackStackView.swift
//  FindYourSoulmate
//
//  Created by Marat on 05.10.2021.
//

import UIKit

class FeedbackStackView: UIStackView {

    override init(frame: CGRect) {
        super.init(frame: frame)
        
        distribution = .fillEqually
        heightAnchor.constraint(equalToConstant: 100).isActive = true
        
        let imageFeedback = [#imageLiteral(resourceName: "03_1"), #imageLiteral(resourceName: "03_2"), #imageLiteral(resourceName: "03_3"), #imageLiteral(resourceName: "03_4"), #imageLiteral(resourceName: "03_5")].map { image -> UIView in
            let feedbackButton = UIButton(type: .system)
            feedbackButton.setImage(image.withRenderingMode(.alwaysOriginal), for: .normal)
            return feedbackButton
        }
        
        imageFeedback.forEach { element in
            addArrangedSubview(element)
        }
    }
    
    required init(coder: NSCoder) {
        fatalError()
    }
    
}
