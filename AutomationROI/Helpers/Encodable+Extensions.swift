//
//  Encodable+Extensions.swift
//  AutomationROI
//
//  Created by HPrietoAmada on 6/23/20.
//  Copyright © 2020 IT Support. All rights reserved.
//

import Foundation

extension Encodable {
    func toJSON() throws -> Data {
        try JSONEncoder().encode(self)
    }
}
