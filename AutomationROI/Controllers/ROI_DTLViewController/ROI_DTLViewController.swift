//
//  ROI_DTLViewController.swift
//  AutomationROI
//
//  Created by HPrietoAmada on 7/7/20.
//  Copyright © 2020 IT Support. All rights reserved.
//

import UIKit

class ROI_DTLViewController: UIViewController {

    var models: [ROI_TEMPLATE] = [ROI_TEMPLATE]() {
        didSet {

        }
    }

    lazy var titleView: TitleView = {
        let view = TitleView()
        view._title = "Detail Info"
        view._subtitle = "Some subtitle"
        return view
    }()

    lazy var scrollView: UIScrollView = {
        let view = UIScrollView()
        view.contentInset = UIEdgeInsets(top: 20, left: 0, bottom: view.bounds.height / 2, right: 0)
        view.translatesAutoresizingMaskIntoConstraints = false
        return view
    }()

    lazy var stackView: UIStackView = {
        let view = UIStackView()
        view.axis = .vertical
        view.translatesAutoresizingMaskIntoConstraints = false
        return view
    }()

    override func viewDidLoad() {
        super.viewDidLoad()
        initSubviews()
    }

    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)

        DBManager.shared.getROI_TEMPLATE { (data, error) in
            guard let data = data else {
                self.presentAlert(title: "Error", message: error.localizedDescription)
                return
            }
            self.models = data
            self.reloadData()
        }
    }

    func reloadData() {
        stackView.arrangedSubviews.filter({ $0.tag == 99 }).forEach { (arrangedSubview) in
            stackView.removeArrangedSubview(arrangedSubview)
        }

        models.forEach { (roiTemplate) in
            let textFieldView: TextFieldView = TextFieldView()
            textFieldView._title = roiTemplate.label ?? ""
            textFieldView.tag = 99
            stackView.addArrangedSubview(textFieldView)
        }
    }

    private func initSubviews() {
        view.backgroundColor = _darkModeEnabled ? .black : .white
        view.addSubview(scrollView)
        scrollView.addSubview(stackView)

        stackView.addArrangedSubview(titleView)

        scrollView.topAnchor.constraint(equalTo: view.topAnchor, constant: view.safeAreaInsets.top).isActive = true
        scrollView.leftAnchor.constraint(equalTo: view.leftAnchor).isActive = true
        scrollView.rightAnchor.constraint(equalTo: view.rightAnchor).isActive = true
        scrollView.bottomAnchor.constraint(equalTo: view.bottomAnchor).isActive = true

        stackView.topAnchor.constraint(equalTo: scrollView.topAnchor).isActive = true
        stackView.bottomAnchor.constraint(equalTo: scrollView.bottomAnchor).isActive = true
        stackView.widthAnchor.constraint(equalTo: scrollView.widthAnchor, constant: -40).isActive = true
        stackView.centerXAnchor.constraint(equalTo: scrollView.centerXAnchor).isActive = true
    }

}
