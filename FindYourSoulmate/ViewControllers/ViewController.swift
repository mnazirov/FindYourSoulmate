//
//  ViewController.swift
//  FindYourSoulmate
//
//  Created by Marat on 01.10.2021.
//

import UIKit

class ViewController: UIViewController {
    
    let photoView = UIView()
    let feedbackView = UIView()

    override func viewDidLoad() {
        super.viewDidLoad()
        setLayout()
    }
    
    private func setLayout() {
        // Set up Menu
        let elementsMenuView = [UIColor.systemGray, UIColor.systemGray2, UIColor.systemGray3].map { color -> UIView in
            let itemView = UIView()
            itemView.backgroundColor = color
            return itemView
        }
        
        let menuStackView = UIStackView(arrangedSubviews: elementsMenuView)
        menuStackView.heightAnchor.constraint(equalToConstant: 100).isActive = true
        menuStackView.distribution = .fillEqually
        
        // Set up the photo block
        photoView.backgroundColor = .systemTeal
        
        // Set up block of user ratings
        feedbackView.backgroundColor = .white
        feedbackView.heightAnchor.constraint(equalToConstant: 100).isActive = true
        
        
        // Set up Stack View
        let stackView = UIStackView(arrangedSubviews: [menuStackView, photoView, feedbackView])
        stackView.axis = .vertical
        view.addSubview(stackView)
        
        stackView.anchor(top: view.safeAreaLayoutGuide.topAnchor,
                         leading: view.safeAreaLayoutGuide.leadingAnchor,
                         trailing: view.safeAreaLayoutGuide.trailingAnchor,
                         bottom: view.safeAreaLayoutGuide.bottomAnchor)
    }
    
}

