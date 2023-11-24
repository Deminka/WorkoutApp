//
//  ProgressController.swift
//  WorkoutApp
//
//  Created by mac on 24.09.2023.
//

import UIKit

class ProgressController: BaseController {
    
    private let dailyPerformaceView = DailyPerformaceView(with: R.Strings.Progress.dailyPerformance,
                                                          buttonTitle: R.Strings.Progress.last7Days)
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        title = R.Strings.NavBar.progress
        navigationController?.tabBarItem.title = R.Strings.TabBar.title(for: .progress)
        
        addNavBarButton(at: .left, with: R.Strings.Progress.navBarLeft)
        addNavBarButton(at: .right, with: R.Strings.Progress.navBarRight)
    }
}

extension ProgressController {
    
    override func setupViews() {
        super.setupViews()
        
        view.setupView(dailyPerformaceView)
        
    }
    
    override func constrainViews() {
        super.constrainViews()
        
        NSLayoutConstraint.activate([
            
            dailyPerformaceView.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 15),
            dailyPerformaceView.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor, constant: 15),
            dailyPerformaceView.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -15),
            dailyPerformaceView.heightAnchor.constraint(equalTo: dailyPerformaceView.widthAnchor, multiplier: 0.68)
            
        ])
    }
    
    override func configureAppearance() {
        super.configureAppearance()
        
        title = R.Strings.NavBar.progress
        navigationController?.tabBarItem.title = R.Strings.TabBar.title(for: .progress)
        
        addNavBarButton(at: .left, with: R.Strings.Progress.navBarLeft)
        addNavBarButton(at: .right, with: R.Strings.Progress.navBarRight)
        
        dailyPerformaceView.configure(with: [.init(value: "1", heightParm: 0.2, title: "Mon"),
                                             .init(value: "2", heightParm: 0.4, title: "Tue"),
                                             .init(value: "3", heightParm: 0.6, title: "Wed"),
                                             .init(value: "4", heightParm: 0.8, title: "Thu"),
                                             .init(value: "5", heightParm: 1, title: "Fri"),
                                             .init(value: "3", heightParm: 0.6, title: "Sat"),
                                             .init(value: "2", heightParm: 0.4, title: "Sun ")
        ])
    }
}


