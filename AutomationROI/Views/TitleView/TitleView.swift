//
//  TitleView.swift
//  AutomationROI
//
//  Created by HPrietoAmada on 6/17/20.
//  Copyright © 2020 IT Support. All rights reserved.
//

import UIKit

class TitleView: UIView {

    var _titleFontSize: CGFloat = 24 {
        didSet {
            titleTextView._fontSize = _titleFontSize
        }
    }

    var _subtitleFontSize: CGFloat = 16 {
        didSet {
            subtitleTextView._fontSize = _subtitleFontSize
        }
    }

    var _title: String = "" {
        didSet {
            titleTextView.text = _title
        }
    }

    var _subtitle: String = "" {
        didSet {
            subtitleTextView.text = _subtitle
        }
    }

    lazy var titleTextView: TextView = {
        let view = TextView()
        view._fontSize = _titleFontSize
        view._fontType = .demiBold
        view.isEditable = false
        return view
    }()

    lazy var subtitleTextView: TextView = {
        let view = TextView()
        view._fontSize = _subtitleFontSize
        view.isEditable = false
        return view
    }()

    private func setup() {
        translatesAutoresizingMaskIntoConstraints = false
        addSubview(titleTextView)
        addSubview(subtitleTextView)

        titleTextView.topAnchor.constraint(equalTo: topAnchor, constant: 32).isActive = true
        titleTextView.rightAnchor.constraint(equalTo: rightAnchor).isActive = true
        titleTextView.leftAnchor.constraint(equalTo: leftAnchor).isActive = true

        subtitleTextView.topAnchor.constraint(equalTo: titleTextView.bottomAnchor).isActive = true
        subtitleTextView.rightAnchor.constraint(equalTo: titleTextView.rightAnchor).isActive = true
        subtitleTextView.leftAnchor.constraint(equalTo: titleTextView.leftAnchor).isActive = true
        subtitleTextView.bottomAnchor.constraint(equalTo: bottomAnchor).isActive = true

        //bottomAnchor.constraint(equalTo: subtitleTextView.bottomAnchor).isActive = true
    }

    override init(frame: CGRect) {
        super.init(frame: .zero)
        setup()
    }

    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}
