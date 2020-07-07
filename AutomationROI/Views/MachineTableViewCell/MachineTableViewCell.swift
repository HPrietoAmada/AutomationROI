//
//  MachineTableViewCell.swift
//  AutomationROI
//
//  Created by HPrietoAmada on 7/6/20.
//  Copyright © 2020 IT Support. All rights reserved.
//

import UIKit

class MachineTableViewCell: UITableViewCell {

    var _fontSize: CGFloat = 14 {
        didSet {
            customerNameLabel._fontSize = _fontSize
            customerNameTitleLabel._fontSize = _fontSize

            machine1TitleLabel._fontSize = _fontSize
            machine1Label._fontSize = _fontSize

            machine2TitleLabel._fontSize = _fontSize
            machine2Label._fontSize = _fontSize

            createdDateTitleLabel._fontSize = _fontSize
            createdDateLabel._fontSize = _fontSize
        }
    }

    var _fontType: TextView.FontTypes = .medium {
        didSet {
            customerNameLabel._fontType = _fontType
            customerNameTitleLabel._fontType = _fontType

            machine1TitleLabel._fontType = _fontType
            machine1Label._fontType = _fontType

            machine2TitleLabel._fontType = _fontType
            machine2Label._fontType = _fontType

            createdDateTitleLabel._fontType = _fontType
            createdDateLabel._fontType = _fontType
        }
    }

    let customerNameTitleLabel: TextView = {
        let view = TextView()
        view.textColor = ._gray
        return view
    }()

    let customerNameLabel: TextView = {
        let view = TextView()
        return view
    }()


    let machine1TitleLabel: TextView = {
        let view = TextView()
        view.textColor = ._gray
        return view
    }()

    let machine1Label: TextView = {
        let view = TextView()
        return view
    }()

    let machine2TitleLabel: TextView = {
        let view = TextView()
        view.textColor = ._gray
        return view
    }()

    let machine2Label: TextView = {
        let view = TextView()
        return view
    }()

    let createdDateTitleLabel: TextView = {
        let view = TextView()
        view.textColor = ._gray
        return view
    }()

    let createdDateLabel: TextView = {
        let view = TextView()
        return view
    }()

    lazy var bottomBorder: Border = {
        return Border()
    }()

    private func initSubviews() {
        selectionStyle = .none
        addSubview(customerNameTitleLabel)
        addSubview(customerNameLabel)
        addSubview(machine1TitleLabel)
        addSubview(machine1Label)
        addSubview(machine2TitleLabel)
        addSubview(machine2Label)
        addSubview(createdDateTitleLabel)
        addSubview(createdDateLabel)
        addSubview(bottomBorder)

        machine1TitleLabel.leftAnchor.constraint(equalTo: leftAnchor).isActive = true
        machine1TitleLabel.topAnchor.constraint(equalTo: topAnchor, constant: 10).isActive = true
        machine1TitleLabel.rightAnchor.constraint(equalTo: centerXAnchor).isActive = true

        machine1Label.topAnchor.constraint(equalTo: machine1TitleLabel.bottomAnchor).isActive = true
        machine1Label.leftAnchor.constraint(equalTo: machine1TitleLabel.leftAnchor).isActive = true
        machine1Label.rightAnchor.constraint(equalTo: machine1TitleLabel.rightAnchor).isActive = true

        machine2TitleLabel.leftAnchor.constraint(equalTo: machine1TitleLabel.leftAnchor).isActive = true
        machine2TitleLabel.topAnchor.constraint(equalTo: machine1Label.bottomAnchor).isActive = true
        machine2TitleLabel.rightAnchor.constraint(equalTo: machine1TitleLabel.rightAnchor).isActive = true

        machine2Label.topAnchor.constraint(equalTo: machine2TitleLabel.bottomAnchor).isActive = true
        machine2Label.leftAnchor.constraint(equalTo: machine2TitleLabel.leftAnchor).isActive = true
        machine2Label.rightAnchor.constraint(equalTo: machine2TitleLabel.rightAnchor).isActive = true
        machine2Label.bottomAnchor.constraint(equalTo: bottomAnchor, constant: -10).isActive = true

        customerNameTitleLabel.leftAnchor.constraint(equalTo: centerXAnchor).isActive = true
        customerNameTitleLabel.topAnchor.constraint(equalTo: topAnchor, constant: 10).isActive = true
        customerNameTitleLabel.rightAnchor.constraint(equalTo: rightAnchor).isActive = true

        customerNameLabel.topAnchor.constraint(equalTo: customerNameTitleLabel.bottomAnchor).isActive = true
        customerNameLabel.leftAnchor.constraint(equalTo: customerNameTitleLabel.leftAnchor).isActive = true
        customerNameLabel.rightAnchor.constraint(equalTo: customerNameTitleLabel.rightAnchor).isActive = true

        createdDateTitleLabel.leftAnchor.constraint(equalTo: customerNameTitleLabel.leftAnchor).isActive = true
        createdDateTitleLabel.topAnchor.constraint(equalTo: customerNameLabel.bottomAnchor).isActive = true
        createdDateTitleLabel.rightAnchor.constraint(equalTo: customerNameTitleLabel.rightAnchor).isActive = true

        createdDateLabel.topAnchor.constraint(equalTo: createdDateTitleLabel.bottomAnchor).isActive = true
        createdDateLabel.leftAnchor.constraint(equalTo: customerNameTitleLabel.leftAnchor).isActive = true
        createdDateLabel.rightAnchor.constraint(equalTo: customerNameTitleLabel.rightAnchor).isActive = true
        createdDateLabel.bottomAnchor.constraint(equalTo: machine2Label.bottomAnchor).isActive = true

        bottomBorder.leftAnchor.constraint(equalTo: machine1TitleLabel.leftAnchor).isActive = true
        bottomBorder.rightAnchor.constraint(equalTo: customerNameTitleLabel.rightAnchor).isActive = true
        bottomBorder.bottomAnchor.constraint(equalTo: bottomAnchor).isActive = true

    }

    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        initSubviews()
    }

    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }

}
