//
//  ViewController.swift
//  AutomationROI
//
//  Created by HPrietoAmada on 6/17/20.
//  Copyright © 2020 IT Support. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    var values: [String: String] = [String: String]()

    lazy var scrollView: UIScrollView = {
        let view = UIScrollView()
        view.alwaysBounceVertical = true
        view.alwaysBounceHorizontal = false
        view.translatesAutoresizingMaskIntoConstraints = false
        return view
    }()

    lazy var stackView: UIStackView = {
        let view = UIStackView()
        view.axis = .vertical
        //view.alignment = .fill
        view.spacing = 0
        view.isLayoutMarginsRelativeArrangement = true
        view.directionalLayoutMargins = NSDirectionalEdgeInsets(
            top: 10,
            leading: 20,
            bottom: 10,
            trailing: 20
        )
        view.addArrangedSubview(titleView)
        view.translatesAutoresizingMaskIntoConstraints = false
        return view
    }()

    lazy var titleView: TitleView = {
        let view = TitleView()
        view.tag = 1
        view._titleFontSize = 32
        view._title = "Online Experiences"
        view._subtitle = "Meet people all over the world while trying something new. Join live, interactive video sessions led by one-of-a-kind hosts—all without leaving home."
        return view
    }()

    var stackViewSubViews: [UIView] = [UIView]() {
        didSet {
            stackView.arrangedSubviews.filter({ $0.tag == 0 }).forEach { (arrangedSubview) in
                self.stackView.removeArrangedSubview(arrangedSubview)
            }
            stackView.addArrangedSubview(titleView)
            stackViewSubViews.forEach { (subView) in
                stackView.addArrangedSubview(subView)
            }
            let button: Button = Button()
            button._title = "Add Payment Method"
            stackView.addArrangedSubview(button)
            let scrollViewContentHeight: CGFloat = stackView._size.height + view.bounds.height / 2
            scrollView.contentSize = CGSize(width: view.bounds.width, height: scrollViewContentHeight)
        }
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        setup()
        testData()
    }

    private func testData() {
        var subViews: [UIView] = [UIView]()
        for i in 0...10 {
            let textfield = TextFieldView()
            textfield._title = "Some TextField \(i)"
            textfield._placeholder = "Some Placeholder"
            subViews.append(textfield)
        }
        self.stackViewSubViews = subViews
    }

    private func setup() {
        view.backgroundColor = self._darkModeEnabled ? .black : .white
        view.addSubview(scrollView)
        scrollView.addSubview(stackView)

        scrollView.topAnchor.constraint(equalTo: view.topAnchor, constant: view.safeAreaInsets.top).isActive = true
        scrollView.leftAnchor.constraint(equalTo: view.leftAnchor).isActive = true
        scrollView.rightAnchor.constraint(equalTo: view.rightAnchor).isActive = true
        scrollView.bottomAnchor.constraint(equalTo: view.bottomAnchor).isActive = true

        stackView.widthAnchor.constraint(equalTo: scrollView.widthAnchor).isActive = true
        stackView.centerXAnchor.constraint(equalTo: scrollView.centerXAnchor).isActive = true
        stackView.topAnchor.constraint(equalTo: scrollView.topAnchor).isActive = true
    }
}

