//
//  Style+iPhone.swift
//  Operations
//
//  Created by Asante on 5/19/20.
//  Copyright © 2020 Rare Times. All rights reserved.
//

import Foundation
import UIKit

extension Style {
    static var iPhone: Style {
        return Style(
            backgroundColor: .black,
            preferredStatusBarStyle: .lightContent,
            attributesForStyle: { $0.iPhoneAttributes }
        )
    }
}

private extension Style.TextStyle {
    var iPhoneAttributes: Style.TextAttributes {
        switch self {
        case .navigationBar:
            return Style.TextAttributes(font: .iPhoneTitle, color: .iPhoneGreen, backgroundColor: .black)
        case .assessmentTitle:
            return Style.TextAttributes(font: .iPhoneTitle, color: .white)
        case .mainTitle:
            return Style.TextAttributes(font: .iPhoneMainTitle, color: .black)
        case .subtitle:
            return Style.TextAttributes(font: .iPhoneSubtitle, color: .white)
        case .body:
            return Style.TextAttributes(font: .iPhoneBody, color: .black, backgroundColor: .clear)
        case .assessmentButton:
            return Style.TextAttributes(font: .iPhoneButtonFont, color: .black, backgroundColor: .ButtonBackground)
        case .segueButton:
            return Style.TextAttributes(font: .iPhoneButtonFont, color: .white)
        case .textField:
            return Style.TextAttributes(font: .iPhoneBody, color: .black, backgroundColor: .ButtonBackground)
        case .textView:
            return Style.TextAttributes(font: .iPhoneBody, color: .black, backgroundColor: .ButtonBackground)
        case .view:
            return Style.TextAttributes(font: .iPhoneBody, color: .black, backgroundColor: .ButtonBackground)
        case .progressBar:
            return Style.TextAttributes(font: .iPhoneBody, color: .black, backgroundColor: nil)
        case .slider:
            return Style.TextAttributes(font: .iPhoneBody, color: .black, backgroundColor: nil)
        }
    }
}

extension UIColor {
    static var iPhoneRed: UIColor {
        return UIColor(red: 1, green: 0.1, blue: 0.1, alpha: 1)
    }
    static var iPhoneGreen: UIColor {
        return UIColor(red: 0, green: 1, blue: 0, alpha: 1)
    }
    static var iPhoneBlue: UIColor {
        return UIColor(red: 0, green: 0.2, blue: 0.9, alpha: 1)
    }
}

extension UIFont {
    static var iPhoneTitle: UIFont {
        return UIFont(name: "AvenirNext-DemiBold", size: 17)!
    }
    static var iPhoneMainTitle: UIFont {
        return UIFont(name: "AvenirNext-DemiBold", size: 25)!
    }
    static var iPhoneSubtitle: UIFont {
        return UIFont(name: "AvenirNext-Bold", size: 15)!
    }
    static var iPhoneBody: UIFont {
        return UIFont(name: "Avenir Next", size: 10)!
    }
    static var iPhoneButtonFont: UIFont {
        return UIFont(name: "Avenir Next", size: 10)!
    }
}
