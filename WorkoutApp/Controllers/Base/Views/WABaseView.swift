//
//  BaseView.swift
//  WorkoutApp
//
//  Created by mac on 07.11.2023.
//

import UIKit

class WABaseView: UIView {
    override init(frame: CGRect) {
        super.init(frame: frame)
        
        setupViews()
        constraintViews()
        configureView()
    }
    
    required init?(coder: NSCoder) {
        super.init(coder: coder)

        setupViews()
        constraintViews()
        configureView()
    }
}

@objc extension WABaseView {
    func setupViews() {}
    func constraintViews() {}
    func configureView() {
        backgroundColor = .white
    }
}
