//
//  Resources.swift
//  WorkoutApp
//
//  Created by mac on 24.09.2023.
//

import UIKit

enum Resources {
    
    enum Colors {
        static var active = UIColor(hexString: "#437BFE")
        static var inActive = UIColor(hexString: "#929DA5")
        
        static var backGround = UIColor(hexString: "#F8F9F9")
        static var separator = UIColor(hexString: "#E8ECEF")
        static var secondary = UIColor(hexString: "#F0F3FF")
        
        static var titleGray = UIColor(hexString: "#545C77")
        
    }
    
    enum Strings {
        enum TabBar {
            static var overView = "Overview"
            static var session = "Session"
            static var progress = "Progress"
            static var settings = "Settings"
        }
        
        enum NavBar {
            static var overview = "Today"
            static var session = "High Intensity Cardio"
            static var progress = "Workout Progress"
        }
        
        enum OverView {
            static var allWorkoutsButton = "All Workouts"
        }
        
        enum Session {
            static var navBarLeft = "Pause"
            static var navBarRight = "Finish"
        }
        
        enum Progress {
            static var navBarLeft = "Export"
            static var navBarRight = "Details"
        }
        
    }
    
    enum Images {
        enum TabBar {
            static var overView = UIImage(named: "House Icon")
            static var session = UIImage(named: "Clock Icon")
            static var progress = UIImage(named: "Analytics Bars")
            static var settings = UIImage(named: "Gear Icon")
        }
        
        enum Common {
            static var downArrow = UIImage(named: "Path")
            static var add = UIImage(named: "add_button")
        }
    }
    
    enum Fonts {
        static func helveticaRegular(with size: CGFloat) -> UIFont {
            UIFont(name: "Helvetica", size: size) ?? UIFont()
        }
    }
}
