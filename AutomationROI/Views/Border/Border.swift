//
//  Border.swift
//  AutomationROI
//
//  Created by HPrietoAmada on 6/17/20.
//  Copyright © 2020 IT Support. All rights reserved.
//

import UIKit

class Border: UIView {

    private var widthLayoutConstraint: NSLayoutConstraint?
    private var heightLayoutConstraint: NSLayoutConstraint?

    enum Axis {
        case horizontal
        case vertical
    }

    var _axis: Axis = .horizontal {
        didSet {
            setupAxis()
        }
    }

    var _thickness: CGFloat = 1 {
        didSet {
            switch _axis {
            case .horizontal:
                widthLayoutConstraint?.constant = _thickness
                heightLayoutConstraint?.constant = 0
            case .vertical:
                widthLayoutConstraint?.constant = 0
                heightLayoutConstraint?.constant = _thickness
            }
        }
    }

    private func setup() {
        backgroundColor = ._borderColor
        translatesAutoresizingMaskIntoConstraints = false
        heightLayoutConstraint = heightAnchor.constraint(equalToConstant: _thickness)
        widthLayoutConstraint = widthAnchor.constraint(equalToConstant: _thickness)
        setupAxis()
    }

    private func setupAxis() {
        switch _axis {
        case .horizontal:
            heightLayoutConstraint?.isActive = true
            widthLayoutConstraint?.isActive = false
            heightLayoutConstraint?.constant = _thickness
            widthLayoutConstraint?.constant = 0
        case .vertical:
            heightLayoutConstraint?.isActive = false
            widthLayoutConstraint?.isActive = true
            heightLayoutConstraint?.constant = 0
            widthLayoutConstraint?.constant = _thickness
        }
    }

    override init(frame: CGRect) {
        super.init(frame: .zero)
        setup()
    }

    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}
