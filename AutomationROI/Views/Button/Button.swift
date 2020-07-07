//
//  Button.swift
//  AutomationROI
//
//  Created by HPrietoAmada on 6/17/20.
//  Copyright © 2020 IT Support. All rights reserved.
//

import UIKit

class Button: UIButton {

    var _padding: UIEdgeInsets = UIEdgeInsets(top: 10, left: 22, bottom: 10, right: 22) {
        didSet {
            contentEdgeInsets = _padding
        }
    }

    var _fontSize: CGFloat = 16 {
        didSet {
            self.titleLabel?.font = UIFont(name: UIFont._demiBold, size: _fontSize)
        }
    }

    var _title: String = "" {
        didSet {
            setTitle(_title, for: .normal)
        }
    }

    var _textColor: UIColor = .white {
        didSet {
            titleLabel?.textColor = _textColor
        }
    }

    var _borderColor: UIColor = ._secondary {
        didSet {
            layer.borderColor = _borderColor.cgColor
        }
    }

    var _borderWidth: CGFloat = 2 {
        didSet {
            layer.borderWidth = _borderWidth
        }
    }

    var _cornerRadius: CGFloat = 4 {
        didSet {
            layer.cornerRadius = _cornerRadius
        }
    }

    private func setup() {
        translatesAutoresizingMaskIntoConstraints = false
        backgroundColor = ._secondary
        layer.masksToBounds = true
        layer.borderWidth = _borderWidth
        layer.borderColor = _borderColor.cgColor
        layer.cornerRadius = _cornerRadius
        titleLabel?.font = UIFont(name: UIFont._demiBold, size: _fontSize)
        titleLabel?.textColor = _textColor
        contentEdgeInsets = _padding
    }

    override init(frame: CGRect) {
        super.init(frame: .zero)
        setup()
    }

    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}
