//
//  UIViewController+Extensions.swift
//  AutomationROI
//
//  Created by HPrietoAmada on 6/17/20.
//  Copyright © 2020 IT Support. All rights reserved.
//

import UIKit

extension UIViewController {

    public var _darkModeEnabled: Bool {
        return UITraitCollection().userInterfaceStyle == .dark
    }

    func presentAlert(title: String, message: String) {
        let alertController = UIAlertController(title: "Error", message: message, preferredStyle: .alert)
        let okAction = UIAlertAction(
            title: "Ok",
            style: .cancel,
            handler: nil
        )
        alertController.addAction(okAction)
        present(
            alertController,
            animated: true,
            completion: nil
        )
    }
}
