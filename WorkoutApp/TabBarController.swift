//
//  TabBarController.swift
//  WorkoutApp
//
//  Created by mac on 24.09.2023.
//

import UIKit

enum Tabs: Int {
    case overview
    case session
    case progress
    case settings
}

final class TabBarController: UITabBarController {
    
    override init(nibName nibNameOrNil: String?, bundle nibBundleOrNil: Bundle?) {
        super.init(nibName: nibNameOrNil, bundle: nibBundleOrNil)
        
        configure()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    
    private func configure() {
        tabBar.tintColor =  Resources.Colors.active
        tabBar.barTintColor = Resources.Colors.inActive
        tabBar.backgroundColor = .white
        
        tabBar.layer.borderColor = Resources.Colors.separator.cgColor
        tabBar.layer.borderWidth = 1
        tabBar.layer.masksToBounds = true
        
        let overViewController = UIViewController()
        let sessionController = UIViewController()
        let progressController = UIViewController()
        let settingsController = UIViewController()
        
        let overViewNavigation = UINavigationController(rootViewController: overViewController)
        let sessionNavigation = UINavigationController(rootViewController: sessionController)
        let progressNavigation = UINavigationController(rootViewController: progressController)
        let settingsNavigation = UINavigationController(rootViewController: settingsController)

        overViewNavigation.tabBarItem = UITabBarItem(title: Resources.Strings.TabBar.overView,
                                                     image: Resources.Images.TabBar.overView,
                                                     tag: Tabs.overview.rawValue)
        
        sessionNavigation.tabBarItem = UITabBarItem(title: Resources.Strings.TabBar.session,
                                                    image: Resources.Images.TabBar.session,
                                                     tag: Tabs.session.rawValue)
        
        progressNavigation.tabBarItem = UITabBarItem(title: Resources.Strings.TabBar.progress,
                                                     image: Resources.Images.TabBar.progress,
                                                     tag: Tabs.progress.rawValue)
        
        settingsNavigation.tabBarItem = UITabBarItem(title: Resources.Strings.TabBar.settings,
                                                     image: Resources.Images.TabBar.settings,
                                                     tag: Tabs.settings.rawValue)
        
        setViewControllers([
            overViewNavigation,
            sessionNavigation,
            progressNavigation,
            settingsNavigation
        ], animated: false)
    }
}
