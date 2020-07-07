//
//  TextField+UITextField.swift
//  AutomationROI
//
//  Created by HPrietoAmada on 6/17/20.
//  Copyright © 2020 IT Support. All rights reserved.
//

import UIKit

extension TextFieldView: UITextFieldDelegate {

    func textFieldDidBeginEditing(_ textField: UITextField) {
        textfield._state = .edit
    }

    func textFieldDidEndEditing(_ textField: UITextField) {
        textfield._state = .normal
    }
}
