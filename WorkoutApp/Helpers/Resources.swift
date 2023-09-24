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
        static var separator = UIColor(hexString: "#E8ECEF")
        
    }
    
    enum Strings {
        enum TabBar {
            static var overView = "Overview"
            static var session = "Session"
            static var progress = "Progress"
            static var settings = "Settings"
            
        }
        
    }
    
    enum Images {
        enum TabBar {
            static var overView = UIImage(named: "House Icon")
            static var session = UIImage(named: "Clock Icon")
            static var progress = UIImage(named: "Analytics Bars")
            static var settings = UIImage(named: "Gear Icon")
        }
    }
}
