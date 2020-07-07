//
//  UIColor+Extensions.swift
//  AutomationROI
//
//  Created by HPrietoAmada on 6/17/20.
//  Copyright © 2020 IT Support. All rights reserved.
//

import UIKit

extension UIColor {
    convenience init(_ r: CGFloat, _ g: CGFloat, _ b: CGFloat) {
        self.init(red: r/255, green: g/255, blue: b/255, alpha: 1)
    }

    convenience init(red: Int, green: Int, blue: Int, alpha: CGFloat = 1.0) {
        assert(red >= 0 && red <= 255, "Invalid red component")
        assert(green >= 0 && green <= 255, "Invalid green component")
        assert(blue >= 0 && blue <= 255, "Invalid blue component")
        self.init(red: CGFloat(red) / 255.0, green: CGFloat(green) / 255.0, blue: CGFloat(blue) / 255.0, alpha: alpha)
    }

    convenience init(netHex:Int, alpha: CGFloat = 1.0) {
        self.init(
            red:(netHex >> 16) & 0xff,
            green:(netHex >> 8) & 0xff,
            blue:netHex & 0xff,
            alpha: alpha
        )
    }

    struct MainColors {
        static let red         = UIColor(netHex: 0xbd0000)
        static let green       = UIColor(netHex: 0x688b50)
        static let orange      = UIColor(netHex: 0xC58629)
        static let black       = UIColor(netHex: 0x130303)
        static let darkGray    = UIColor(netHex: 0x5C575A)
        static let lightGray   = UIColor(netHex: 0xDCDCDC)
        static let mainColor   = UIColor(netHex: 0x39729B)
        static let lightColor  = UIColor(netHex: 0x6EA4CA)
        static let darkColor   = UIColor(netHex: 0xE8E8E8)
        static let accentColor = UIColor(netHex: 0xD1E0EB)
    }

    static let _backgroundGray: UIColor = UIColor(247, 247, 247)

    static let _black: UIColor = UIColor(34, 34, 34)

    static let _lightGray: UIColor = UIColor(netHex: 0xEBEBEB)

    static let _gray: UIColor = UIColor(118, 118, 118)

    static let _darkGray: UIColor = UIColor(72, 72, 72)

    static let _primary: UIColor = UIColor(netHex: 0x39729B)

    static let _secondary: UIColor = UIColor(netHex: 0x6EA4CA)

    static let _amadaPrimary: UIColor = UIColor(netHex: 0x8F2626)

    static let _placeholder: UIColor = UIColor(118, 118, 118)

    static let _borderColor: UIColor = UIColor(235, 235, 235)

    static let _redError: UIColor = UIColor(netHex: 0xd93900)

    static let _redErrorBackground: UIColor = UIColor(netHex: 0xd93900, alpha: 0.25)

    /*
    static var _placeholder: UIColor {
        return UIColor(red: 0, green: 0, blue: 0.0980392, alpha: 0.22)
    }
    */

    struct StatusColors {
        public static let red: UIColor = UIColor(netHex: 0xF04837)
        public static let orange: UIColor = UIColor(netHex: 0xF79F40)
        public static let blue: UIColor = UIColor(netHex: 0x6078EA)
        public static let green: UIColor = UIColor(netHex: 0x9ED22B)
        public static let gray: UIColor = UIColor(netHex: 0xE5E5E5)
    }
}
