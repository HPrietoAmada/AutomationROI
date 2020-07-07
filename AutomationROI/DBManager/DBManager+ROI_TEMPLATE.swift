//
//  DBManager+ROI_TEMPLATE.swift
//  AutomationROI
//
//  Created by HPrietoAmada on 7/7/20.
//  Copyright © 2020 IT Support. All rights reserved.
//

import Foundation

extension DBManager {

    func getROI_TEMPLATE(_ completionHandler: @escaping DataReturned<[ROI_TEMPLATE]>) {
        get(Endpoints.get_roi_template.rawValue, completionHandler)
    }

}
