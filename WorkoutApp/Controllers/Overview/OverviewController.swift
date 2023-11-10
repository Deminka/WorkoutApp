//
//  ViewController.swift
//  WorkoutApp
//
//  Created by mac on 24.09.2023.
//

import UIKit

class OverviewController: BaseController {
    
    private let navBar = OverViewNavBar()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }
}

extension OverviewController {
    
    override func setupViews() {
        super.setupViews()
        
        view.setupView(navBar)
        
    }
    
    override func constrainViews() {
        super.constrainViews()
        
        NSLayoutConstraint.activate([
            navBar.topAnchor.constraint(equalTo: view.topAnchor),
            navBar.leadingAnchor.constraint(equalTo: view.leadingAnchor),
            navBar.trailingAnchor.constraint(equalTo: view.trailingAnchor),
            
        ])
    }
    
    override func configureAppearance() {
        super.configureAppearance()
        
        navigationController?.navigationBar.isHidden = true
        
    }
}



