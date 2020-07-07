//
//  ROI_HDRViewController.swift
//  AutomationROI
//
//  Created by HPrietoAmada on 7/7/20.
//  Copyright © 2020 IT Support. All rights reserved.
//

import UIKit

class ROI_HDRViewController: UIViewController {

    lazy var titleView: TitleView = {
        let view = TitleView()
        view._title = "Header Info"
        view._subtitle = "Some subtitle"
        return view
    }()

    lazy var customerNameTextFieldView: TextFieldView = {
        let view = TextFieldView()
        view._title = "Customer Name"
        view._placeholder = "Enter the customer's name"
        return view
    }()

    lazy var model1TextFieldView: TextFieldView = {
        let view = TextFieldView()
        view._title = "Standalone"
        view._placeholder = "Enter the name of the standalone machine"
        return view
    }()

    lazy var model2TextFieldView: TextFieldView = {
        let view = TextFieldView()
        view._title = "With Automation"
        view._placeholder = "Enter the name of the machine with automation"
        return view
    }()

    lazy var nextButton: Button = {
        let view = Button()
        view._title = "Next"
        view.addTarget(self, action: #selector(handleNext), for: .touchUpInside)
        return view
    }()

    @objc func handleNext() {
        let controller = ROI_DTLViewController()
        navigationController?.pushViewController(controller, animated: true)
    }

    lazy var scrollView: UIScrollView = {
        let view = UIScrollView()
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

    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        initSubviews()
    }

    private func initSubviews() {
        view.backgroundColor = _darkModeEnabled ? .black : .white
        view.addSubview(scrollView)
        scrollView.addSubview(stackView)

        stackView.addArrangedSubview(titleView)
        stackView.addArrangedSubview(customerNameTextFieldView)
        stackView.addArrangedSubview(model1TextFieldView)
        stackView.addArrangedSubview(model2TextFieldView)
        stackView.addArrangedSubview(nextButton)

        scrollView.topAnchor.constraint(equalTo: view.topAnchor, constant: view.safeAreaInsets.top).isActive = true
        scrollView.leftAnchor.constraint(equalTo: view.leftAnchor).isActive = true
        scrollView.rightAnchor.constraint(equalTo: view.rightAnchor).isActive = true
        scrollView.bottomAnchor.constraint(equalTo: view.bottomAnchor).isActive = true

        stackView.topAnchor.constraint(equalTo: scrollView.topAnchor).isActive = true
        stackView.bottomAnchor.constraint(equalTo: scrollView.bottomAnchor).isActive = true
        stackView.widthAnchor.constraint(equalTo: scrollView.widthAnchor, constant: -40).isActive = true
        stackView.centerXAnchor.constraint(equalTo: scrollView.centerXAnchor).isActive = true

        let closeButton: UIBarButtonItem = UIBarButtonItem(title: "Close", style: .done, target: self, action: #selector(handleClose))
        closeButton.tintColor = ._secondary
        navigationItem.leftBarButtonItem = closeButton
    }

    @objc func handleClose() {
        dismiss(animated: true, completion: nil)
    }

}
