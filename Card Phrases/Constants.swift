//
//  Constants.swift
//  Card Phrases
//
//  Created by Tomate Albertini on 02/03/21.
//

import UIKit

class Constants {
    
    static let statusBarHeight: CGFloat = {
        var heightToReturn: CGFloat = 0.0
             for window in UIApplication.shared.windows {
                 if let height = window.windowScene?.statusBarManager?.statusBarFrame.height, height > heightToReturn {
                     heightToReturn = height
                 }
             }
        return heightToReturn
    }()
}

