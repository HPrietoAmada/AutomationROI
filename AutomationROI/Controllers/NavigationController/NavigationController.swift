//
//  NavigationController.swift
//  AutomationROI
//
//  Created by HPrietoAmada on 7/6/20.
//  Copyright © 2020 IT Support. All rights reserved.
//

import UIKit

class NavigationController: UINavigationController {

    override func viewDidLoad() {
        super.viewDidLoad()
        initSubviews()
    }

    private func initSubviews() {
        navigationBar.isHidden = false
        navigationBar.backgroundColor = self._darkModeEnabled ? .black : .white
        //navigationBar.isTranslucent = false
        navigationBar.tintColor = self._darkModeEnabled ? .white : .black
        navigationBar.barStyle = .default
        UINavigationBar.appearance().barTintColor = self._darkModeEnabled ? .black : .white
        UINavigationBar.appearance().titleTextAttributes = [NSAttributedString.Key.foregroundColor : UIColor._black]
    }
}
