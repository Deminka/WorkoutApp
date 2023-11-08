//
//  SessionController.swift
//  WorkoutApp
//
//  Created by mac on 24.09.2023.
//

import UIKit

class SessionController: BaseController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        title = Resources.Strings.NavBar.session
        tabBarController?.tabBarItem.title = Resources.Strings.TabBar.session

        addNavBarButton(at: .left, with: Resources.Strings.Session.navBarLeft)
        addNavBarButton(at: .right, with: Resources.Strings.Session.navBarRight)
    }
    
//    override func navBarLeftButtonHandler() {
//        print("Session navBar left button tapped")
//    }


}

