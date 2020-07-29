//
//  Style+iPad.swift
//  Operations
//
//  Created by Asante on 5/19/20.
//  Copyright © 2020 Rare Times. All rights reserved.
//

import Foundation
import UIKit

extension Style {
    static var iPad: Style {
        return Style(
            backgroundColor: .white,
            preferredStatusBarStyle: .lightContent,
            attributesForStyle: { $0.iPadAttributes }
        )
    }
}

private extension Style.TextStyle {
    var iPadAttributes: Style.TextAttributes {
        switch self {
        case .navigationBar:
            return Style.TextAttributes(font: .iPadTitle, color: .iPadGreen, backgroundColor: .black)
        case .assessmentTitle:
            return Style.TextAttributes(font: .iPadTitle, color: .black)
        case .mainTitle:
            return Style.TextAttributes(font: .iPadMainTitle, color: .black)
        case .subtitle:
            return Style.TextAttributes(font: .iPadSubtitle, color: .blue)
        case .body:
            return Style.TextAttributes(font: .iPadBody, color: .black, backgroundColor: .clear)
        case .assessmentButton:
            return Style.TextAttributes(font: .iPadButtonFont, color: .black, backgroundColor: .ButtonBackground)
        case .segueButton:
            return Style.TextAttributes(font: .iPadButtonFont, color: .white)
        case .textField:
            return Style.TextAttributes(font: .iPadBody, color: .black, backgroundColor: .ButtonBackground)
        case .textView:
            return Style.TextAttributes(font: .iPadBody, color: .black, backgroundColor: .ButtonBackground)
        case .view:
            return Style.TextAttributes(font: .iPadBody, color: .black, backgroundColor: .ButtonBackground)
        case .progressBar:
            return Style.TextAttributes(font: .iPadBody, color: .black, backgroundColor: nil)
        case .slider:
            return Style.TextAttributes(font: .iPadBody, color: .black, backgroundColor: nil)
        }
    }
}

extension UIColor {
    static var iPadRed: UIColor {
        return UIColor(red: 1, green: 0.1, blue: 0.1, alpha: 1)
    }
    static var iPadGreen: UIColor {
        return UIColor(red: 0, green: 1, blue: 0, alpha: 1)
    }
    static var iPadBlue: UIColor {
        return UIColor(red: 0, green: 0.2, blue: 0.9, alpha: 1)
    }
//    static var NerdGreen: UIColor {
//            return UIColor(named: "NerdGreen")!
//    }
//    static var NerdBlue: UIColor {
//            return UIColor(named: "NerdBlue")!
//    }
    static var ButtonBackground: UIColor {
        return UIColor.gray
    }
    static var SelectedButtonBackground: UIColor {
        return UIColor.darkGray
    }
}

extension UIFont {
    static var iPadTitle: UIFont {
        return UIFont(name: "AvenirNext-DemiBold", size: 20)!
    }
    static var iPadMainTitle: UIFont {
        return UIFont(name: "AvenirNext-DemiBold", size: 35)!
    }
    static var iPadSubtitle: UIFont {
        return UIFont(name: "AvenirNext-Bold", size: 13)!
    }
    static var iPadBody: UIFont {
        return UIFont(name: "Avenir Next", size: 12)!
    }
    static var iPadButtonFont: UIFont {
        return UIFont(name: "Avenir Next", size: 12)!
    }
}
