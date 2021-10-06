//
//  ViewController.swift
//  FindYourSoulmate
//
//  Created by Marat on 01.10.2021.
//

import UIKit

class ViewController: UIViewController {
    
    let photoView = UIView()
    
    let topNavigationStackView = TopNavigationStackView()
    let feedbackStackView = FeedbackStackView()

    override func viewDidLoad() {
        super.viewDidLoad()
        
        photoView.backgroundColor = #colorLiteral(red: 0.2392156869, green: 0.6745098233, blue: 0.9686274529, alpha: 1)
        
        setLayout()
    }
    
    private func setLayout() {
        let mainStackView = UIStackView(arrangedSubviews: [topNavigationStackView, photoView, feedbackStackView])
        mainStackView.axis = .vertical
        view.addSubview(mainStackView)
        
        mainStackView.anchor(top: view.safeAreaLayoutGuide.topAnchor,
                         leading: view.leadingAnchor,
                         trailing: view.trailingAnchor,
                         bottom: view.safeAreaLayoutGuide.bottomAnchor)
    }
    
}

