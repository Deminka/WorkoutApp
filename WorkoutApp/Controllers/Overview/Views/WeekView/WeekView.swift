//
//  WeekView.swift
//  WorkoutApp
//
//  Created by mac on 08.11.2023.
//

import UIKit

final class WeekView: WABaseView {
    
    private let calendar = Calendar.current
    private let stackView = UIStackView()
    
}

extension WeekView {
    
    override func setupViews() {
        super.setupViews()
        
        setupView(stackView)
    }
    
    override func constraintViews() {
        super.constraintViews()
        
        NSLayoutConstraint.activate([
            stackView.topAnchor.constraint(equalTo: topAnchor),
            stackView.trailingAnchor.constraint(equalTo: trailingAnchor),
            stackView.leadingAnchor.constraint(equalTo: leadingAnchor),
            stackView.bottomAnchor.constraint(equalTo: bottomAnchor)
        ])
    }
    
    override func configureView() {
        super.configureView()
        
        stackView.spacing = 7
        stackView.distribution = .fillEqually
        
        var weekdays = calendar.shortStandaloneWeekdaySymbols
        
        if calendar.firstWeekday == 1 {
            let sun = weekdays.remove(at: 0)
            weekdays.append(sun)
        }
        
        weekdays.enumerated().forEach{index, name in
            let view = WeekdayView()
            view.configure(with: index, and: name)
            
            stackView.addArrangedSubview(view)
        }
    }
}
