//
//  TextViewController.swift
//  AutomationROI
//
//  Created by HPrietoAmada on 7/6/20.
//  Copyright © 2020 IT Support. All rights reserved.
//

import UIKit

class TestViewController: UIViewController {

    lazy var bar: GroupedBarChart = {
        let view = GroupedBarChart()
        return view
    }()

    override func viewDidLoad() {
        super.viewDidLoad()

        view.addSubview(bar)
        
        bar.widthAnchor.constraint(equalTo: view.widthAnchor, constant: -40).isActive = true
        bar.heightAnchor.constraint(equalToConstant: view.bounds.width * (6/9)).isActive = true
        bar.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
        bar.centerYAnchor.constraint(equalTo: view.centerYAnchor).isActive = true
    }

}
