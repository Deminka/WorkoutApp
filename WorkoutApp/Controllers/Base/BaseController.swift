//
//  BaseController.swift
//  WorkoutApp
//
//  Created by mac on 24.09.2023.
//

import UIKit

enum NavBarPosition {
    case left
    case right
}

class BaseController: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        setupViews()
        constrainViews()
        configureAppearance()
    }
}

@objc extension BaseController {
    
    func setupViews() {}
    func constrainViews() {}
    func configureAppearance() {
        
        view.backgroundColor = R.Colors.backGround
    }
    
    func navBarLeftButtonHandler() {
        print("NavBarLeft button tapped")

    }
    
    func navBarRightButtonHandler() {
        print("NavBarRight button tapped")
    }
}

extension BaseController {
    func addNavBarButton(at position: NavBarPosition, with title: String) {
        let button = UIButton(type: .system)
        button.setTitle(title, for: .normal)
        button.setTitleColor(R.Colors.active, for: .normal)
        button.setTitleColor(R.Colors.inActive, for: .disabled)
        button.titleLabel?.font = R.Fonts.helveticaRegular(with: 17)

        switch position {
            
        case .left:
            button.addTarget(self, action: #selector(navBarLeftButtonHandler), for: .touchUpInside )
            navigationItem.leftBarButtonItem = UIBarButtonItem(customView: button)
        case .right:
            button.addTarget(self, action: #selector(navBarRightButtonHandler), for: .touchUpInside )
            navigationItem.rightBarButtonItem = UIBarButtonItem(customView: button)

        }
    }
}
