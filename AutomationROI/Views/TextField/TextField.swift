//
//  TextField.swift
//  AutomationROI
//
//  Created by HPrietoAmada on 6/17/20.
//  Copyright © 2020 IT Support. All rights reserved.
//

import UIKit

class TextField: UITextField {

    enum TextFieldState {
        case normal
        case edit
        case error
    }

    var _state: TextFieldState = .normal {
        didSet {
            switch _state {
            case .normal:
                layer.borderColor = _borderColor.cgColor
                backgroundColor = .clear
            case .edit:
                layer.borderColor = _editBorderColor.cgColor
                backgroundColor = .clear
            case .error:
                layer.borderColor = UIColor._redError.cgColor
                backgroundColor = ._redErrorBackground
            }
        }
    }

    var _borderColor: UIColor = UIColor._borderColor {
        didSet {
            layer.borderColor = _borderColor.cgColor
        }
    }

    var _editBorderColor: UIColor = UIColor._secondary {
        didSet {

        }
    }

    var _fontSize: CGFloat = 18 {
        didSet {
            font = UIFont(name: UIFont._regular, size: _fontSize)
        }
    }

    var _placeholder: String = "" {
        didSet {
            attributedPlaceholder = NSAttributedString(
                string: _placeholder,
                attributes: [
                    NSAttributedString.Key.foregroundColor: UIColor._gray
            ])
        }
    }

    var _padding: UIEdgeInsets = UIEdgeInsets(top: 12, left: 11, bottom: 12, right: 11) {
        didSet {

        }
    }

    override func textRect(forBounds bounds: CGRect) -> CGRect {
        return bounds.inset(by: _padding)
    }

    override func placeholderRect(forBounds bounds: CGRect) -> CGRect {
        return bounds.inset(by: _padding)
    }

    override func editingRect(forBounds bounds: CGRect) -> CGRect {
        return bounds.inset(by: _padding)
    }

    private func setup() {
        font = UIFont(name: UIFont._regular, size: _fontSize)
        textColor = self._darkModeEnabled ? .white : ._black
        translatesAutoresizingMaskIntoConstraints = false
        tintColor = ._black
        _state = .normal
    }

    override init(frame: CGRect) {
        super.init(frame: .zero)
        setup()
    }

    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}
