//
//  TableViewHeaderCell.swift
//  AutomationROI
//
//  Created by HPrietoAmada on 7/6/20.
//  Copyright © 2020 IT Support. All rights reserved.
//

import UIKit

class TableViewHeaderCell: UITableViewHeaderFooterView {

    var _titleFontSize: CGFloat = 24 {
        didSet {
            titleTextView._fontSize = _titleFontSize
        }
    }

    var _subtitleFontSize: CGFloat = 14 {
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
        view._padding = UIEdgeInsets(top: 5, left: 0, bottom: 0, right: 0)
        view._fontSize = _titleFontSize
        view._fontType = .demiBold
        view.isEditable = false
        return view
    }()

    lazy var subtitleTextView: TextView = {
        let view = TextView()
        view._padding = UIEdgeInsets(top: 0, left: 0, bottom: 5, right: 0)
        view._fontSize = _subtitleFontSize
        view.isEditable = false
        return view
    }()

    private func initSubviews() {
        addSubview(titleTextView)
        addSubview(subtitleTextView)

        titleTextView.topAnchor.constraint(equalTo: topAnchor).isActive = true
        titleTextView.rightAnchor.constraint(equalTo: rightAnchor).isActive = true
        titleTextView.leftAnchor.constraint(equalTo: leftAnchor).isActive = true

        subtitleTextView.topAnchor.constraint(equalTo: titleTextView.bottomAnchor).isActive = true
        subtitleTextView.rightAnchor.constraint(equalTo: titleTextView.rightAnchor).isActive = true
        subtitleTextView.leftAnchor.constraint(equalTo: titleTextView.leftAnchor).isActive = true
        subtitleTextView.bottomAnchor.constraint(equalTo: bottomAnchor).isActive = true
    }

    override init(reuseIdentifier: String?) {
        super.init(reuseIdentifier: reuseIdentifier)
        initSubviews()
    }

    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }

}
