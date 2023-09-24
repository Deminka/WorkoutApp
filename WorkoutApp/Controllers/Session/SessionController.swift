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
        
        title = "High Intensity Cardio"
        tabBarController?.tabBarItem.title = Resources.Strings.TabBar.session

        addNavBarButton(at: .left, with: "Pause")
        addNavBarButton(at: .right, with: "Finish")
    }
    
//    override func navBarLeftButtonHandler() {
//        print("Session navBar left button tapped")
//    }


}

