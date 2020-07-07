//
//  TextView.swift
//  AutomationROI
//
//  Created by HPrietoAmada on 6/17/20.
//  Copyright © 2020 IT Support. All rights reserved.
//

import UIKit

class TextView: UITextView {

    enum FontTypes: String {
        case light    = "Avenir-Light"
        case regular  = "AvenirNext-Regular"
        case medium   = "AvenirNext-Medium"
        case demiBold = "AvenirNext-DemiBold"
        case bold     = "AvenirNext-Bold"
        case heavy    = "AvenirNext-Heavy"
    }

    var _padding: UIEdgeInsets = UIEdgeInsets(top: 0, left: 0, bottom: 0, right: 0) {
        didSet {
            textContainerInset = _padding
        }
    }

    var _fontSize: CGFloat = 18 {
        didSet {
            font = UIFont(name: _fontType.rawValue, size: _fontSize)
        }
    }

    var _fontType: FontTypes = .regular {
        didSet {
            font = UIFont(name: _fontType.rawValue, size: _fontSize)
        }
    }

    private func setup() {
        translatesAutoresizingMaskIntoConstraints = false
        sizeToFit()
        isScrollEnabled = false
        isEditable = false
        isUserInteractionEnabled = false
        contentInset = UIEdgeInsets(top: 0, left: -5, bottom: 0, right: 5)
    }

    override init(frame: CGRect, textContainer: NSTextContainer?) {
        super.init(frame: .zero, textContainer: textContainer)
        setup()
    }

    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}
