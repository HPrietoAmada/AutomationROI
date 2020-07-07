//
//  CompareView.swift
//  AutomationROI
//
//  Created by HPrietoAmada on 7/6/20.
//  Copyright © 2020 IT Support. All rights reserved.
//

import UIKit

class CompareView: UIView {

    var _fontSize: CGFloat = 16 {
        didSet {
            titleTextView._fontSize = _fontSize
            item1TextView._fontSize = _fontSize
            item2TextView._fontSize = _fontSize
        }
    }

    lazy var stackView: UIStackView = {
        let view = UIStackView()
        view.backgroundColor = .clear
        view.axis = .horizontal
        view.distribution = .fillEqually
        view.translatesAutoresizingMaskIntoConstraints = false
        return view
    }()

    lazy var titleTextView: TextView = {
        let view = TextView()
        view.textColor = ._gray
        view._fontSize = _fontSize
        return view
    }()

    lazy var item1TextView: TextView = {
        let view = TextView()
        view._fontSize = _fontSize
        return view
    }()

    lazy var item2TextView: TextView = {
        let view = TextView()
        view._fontSize = _fontSize
        return view
    }()

    lazy var bottomBorder: Border = {
        return Border()
    }()

    private func initSubviews() {
        translatesAutoresizingMaskIntoConstraints = false
        addSubview(stackView)
        addSubview(bottomBorder)

        stackView.topAnchor.constraint(equalTo: topAnchor).isActive = true
        stackView.rightAnchor.constraint(equalTo: rightAnchor).isActive = true
        stackView.leftAnchor.constraint(equalTo: leftAnchor).isActive = true
        stackView.bottomAnchor.constraint(equalTo: bottomAnchor).isActive = true

        stackView.addArrangedSubview(titleTextView)
        stackView.addArrangedSubview(item1TextView)
        stackView.addArrangedSubview(item2TextView)

        bottomBorder.bottomAnchor.constraint(equalTo: bottomAnchor).isActive = true
        bottomBorder.leftAnchor.constraint(equalTo: leftAnchor).isActive = true
        bottomBorder.rightAnchor.constraint(equalTo: rightAnchor).isActive = true
    }

    override init(frame: CGRect) {
        super.init(frame: CGRect.zero)
        initSubviews()
    }

    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }

}
