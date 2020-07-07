//
//  Error+Extensions.swift
//  AutomationROI
//
//  Created by HPrietoAmada on 6/17/20.
//  Copyright © 2020 IT Support. All rights reserved.
//

import Foundation

extension Error {

    func toNSError(domain: String = "",code: Int = 404) -> NSError {
        return NSError(domain: domain, code: code, userInfo: [NSLocalizedDescriptionKey: localizedDescription])
    }
}
