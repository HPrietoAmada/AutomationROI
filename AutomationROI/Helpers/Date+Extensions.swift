//
//  Date+Extensions.swift
//  AutomationROI
//
//  Created by HPrietoAmada on 6/17/20.
//  Copyright © 2020 IT Support. All rights reserved.
//

import UIKit

extension Date {

    func toString(_ format: String = "yyyy-MM-dd HH:mm:ss") -> String {
        let dateFormatter: DateFormatter = DateFormatter()
        dateFormatter.dateFormat = format
        return dateFormatter.string(from: self)
    }

}
