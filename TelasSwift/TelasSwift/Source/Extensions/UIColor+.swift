//
//  UIColor+.swift
//  TelasSwift
//
//  Created by Wenderson Ferreira on 23/08/24.
//

import Foundation
import UIKit

extension UIColor {
    
    static var viewBackGroundColor: UIColor {
        UIColor(named: "viewBackGroundColor") ?? .white
    }

    static var buttonBackGroundColor: UIColor {
        UIColor(named: "buttonBackGroundColor") ?? .gray
    }
}
