//
//  TextField.swift
//  AutomationROI
//
//  Created by HPrietoAmada on 6/17/20.
//  Copyright © 2020 IT Support. All rights reserved.
//

import UIKit

class TextFieldView: UIView {

    var _topMargin: CGFloat = 12
    var _bottomMargin: CGFloat = 12

    var _textfieldFocusBorderColor: UIColor = ._secondary

    var _textfieldLeftPadding: CGFloat = 11 {
        didSet {
            textfield.setLeftPaddingPoints(_textfieldLeftPadding)
        }
    }

    var _textfieldRightPadding: CGFloat = 11 {
        didSet {
            textfield.setRightPaddingPoints(_textfieldRightPadding)
        }
    }

    private var heightLayoutConstraint: NSLayoutConstraint?

    var _title: String = "" {
        didSet {
            label.text = _title
        }
    }

    var _titleFontSize: CGFloat = 18 {
        didSet {
            label.font = UIFont(name: UIFont._demiBold, size: _titleFontSize)
        }
    }

    var _textfieldFontSize: CGFloat = 18 {
        didSet {
            textfield._fontSize = _textfieldFontSize
        }
    }

    var _placeholder: String = "" {
        didSet {
            textfield._placeholder = _placeholder
        }
    }

    var _height: CGFloat = 90 {
        didSet {
            heightLayoutConstraint?.constant = _height
        }
    }

    var _keyboardType: UIKeyboardType = .default {
        didSet {
            textfield.keyboardType = _keyboardType
        }
    }

    lazy var label: UILabel = {
        let view = UILabel()
        view.font = UIFont(name: UIFont._medium, size: _titleFontSize)
        view.textColor = self._darkModeEnabled ? .white : ._black
        view.numberOfLines = 1
        view.translatesAutoresizingMaskIntoConstraints = false
        return view
    }()

    lazy var textfield: TextField = {
        let view = TextField()
        view.layer.masksToBounds = true
        view.layer.borderWidth = 1
        view.layer.borderColor = UIColor._borderColor.cgColor
        view.layer.cornerRadius = 4
        view._fontSize = _textfieldFontSize
        view.setLeftPaddingPoints(_textfieldLeftPadding)
        view.setRightPaddingPoints(_textfieldRightPadding)
        view._padding = UIEdgeInsets(top: 12, left: 11, bottom: 12, right: 11)
        view.delegate = self
        return view
    }()

    private func setup() {
        translatesAutoresizingMaskIntoConstraints = false
        addSubview(label)
        addSubview(textfield)

        label.topAnchor.constraint(equalTo: topAnchor, constant: _topMargin).isActive = true
        label.leftAnchor.constraint(equalTo: leftAnchor).isActive = true
        label.rightAnchor.constraint(equalTo: rightAnchor).isActive = true

        textfield.topAnchor.constraint(equalTo: label.bottomAnchor, constant: 8).isActive = true
        textfield.leftAnchor.constraint(equalTo: leftAnchor).isActive = true
        textfield.rightAnchor.constraint(equalTo: rightAnchor).isActive = true
        textfield.bottomAnchor.constraint(equalTo: bottomAnchor, constant: -_bottomMargin).isActive = true
    }

    override init(frame: CGRect) {
        super.init(frame: .zero)
        setup()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
}
