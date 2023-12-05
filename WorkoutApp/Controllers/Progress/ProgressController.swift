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
    
    private let monthlyPerformaceView = MonthlyPerformanceView(with: R.Strings.Progress.monthlyPerformance,
                                                               buttonTitle: R.Strings.Progress.last10Months)
    
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
        view.setupView(monthlyPerformaceView)
        
    }
    
    override func constrainViews() {
        super.constrainViews()
        
        NSLayoutConstraint.activate([
            
            dailyPerformaceView.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 15),
            dailyPerformaceView.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor, constant: 15),
            dailyPerformaceView.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -15),
            dailyPerformaceView.heightAnchor.constraint(equalTo: dailyPerformaceView.widthAnchor, multiplier: 0.68),
            
            monthlyPerformaceView.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 15),
            monthlyPerformaceView.topAnchor.constraint(equalTo: dailyPerformaceView.bottomAnchor, constant: 15),
            monthlyPerformaceView.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -15),
            monthlyPerformaceView.heightAnchor.constraint(equalTo: monthlyPerformaceView.widthAnchor, multiplier: 1.06)
            
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
        
        monthlyPerformaceView.configure(with: [.init(value: 45, title: "Mar"),
                                               .init(value: 55, title: "Apr"),
                                               .init(value: 60, title: "May"),
                                               .init(value: 65, title: "Jun"),
                                               .init(value: 70, title: "Jul"),
                                               .init(value: 80, title: "Aug"),
                                               .init(value: 65, title: "Sep"),
                                               .init(value: 45, title: "Oct"),
                                               .init(value: 30, title: "Nov"),
                                               .init(value: 15, title: "Dec")],
                                        topChartOffset: 10)
    }
}


