//
//  FirstScreenViewController.swift
//  swift-programmatic-ui
//
//  Created by David D on 12/31/18.
//  Copyright © 2018 David D. All rights reserved.
//

import UIKit

class FirstScreenViewController: UIViewController {
    
    let nextButton = UIButton()

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        setupNextButton()
        
        view.backgroundColor = .red
    }
    
    func setupNextButton() {
        nextButton.backgroundColor = .white
        nextButton.setTitleColor(.red, for: .normal)
        nextButton.setTitle("NEXT", for: .normal)
        
        // add to VC's base view
        view.addSubview(nextButton)
        
        // have to set constraints after subview is added to the view
        setNextButtonConstraints
    }
    
    func setNextButtonConstraints() {
        nextButton.translatesAutoresizingMaskIntoConstraints = false // to use autolayout
        
        // pin left side of btn to left side of view, constant = padding
        nextButton.leadingAnchor.constraint(lessThanOrEqualTo: view.leadingAnchor, constant: 20).isActive = true
        nextButton.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -20).isActive = true
        nextButton.heightAnchor.constraint(equalToConstant: 50).isActive = true
        nextButton.centerYAnchor.constraint(equalTo: view.centerYAnchor).isActive = true // vertically centered
        
    }
}
