//
//  ROI_HDR.swift
//  AutomationROI
//
//  Created by HPrietoAmada on 6/17/20.
//  Copyright © 2020 IT Support. All rights reserved.
//

import Foundation

struct ROI_HDR: Codable {
    public var id: Int?
    public var templateId: Int?
    public var customerName: String?
    public var model1: String?
    public var model2: String?
    public var createdDate: String?
    public var createdBy: String?
    public var changedDate: String?
    public var changedBy: String?

    enum CodingKeys: String, CodingKey {
        case id = "ID"
        case templateId = "TEMPLATE_ID"
        case customerName = "CUSTOMER_NAME"
        case model1 = "MODEL1"
        case model2 = "MODEL2"
        case createdDate = "CREATED_DATE"
        case createdBy = "CREATED_BY"
        case changedDate = "CHANGED_DATE"
        case changedBy = "CHANGED_BY"
    }

    init(from decoder: Decoder) throws {
        let values = try decoder.container(keyedBy: CodingKeys.self)
        id = try values.decodeIfPresent(Int.self, forKey: .id)
        templateId = try values.decodeIfPresent(Int.self, forKey: .templateId)
        customerName = try values.decodeIfPresent(String.self, forKey: .customerName)
        model1 = try values.decodeIfPresent(String.self, forKey: .model1)
        model2 = try values.decodeIfPresent(String.self, forKey: .model2)
        createdDate = try values.decodeIfPresent(String.self, forKey: .createdDate)
        createdBy = try values.decodeIfPresent(String.self, forKey: .createdBy)
        changedDate = try values.decodeIfPresent(String.self, forKey: .changedDate)
        changedBy = try values.decodeIfPresent(String.self, forKey: .changedBy)
    }
}

/*

 +---------------+-------------+------+-----+---------+-------+
 | Field         | Type        | Null | Key | Default | Extra |
 +---------------+-------------+------+-----+---------+-------+
 | hdr_id        | int(11)     | YES  |     | NULL    |       |
 | template_id   | smallint(6) | YES  |     | NULL    |       |
 | customer_name | varchar(50) | YES  |     | NULL    |       |
 | model_1       | varchar(20) | YES  |     | NULL    |       |
 | model_2       | varchar(20) | YES  |     | NULL    |       |
 | created_date  | datetime    | YES  |     | NULL    |       |
 | created_by    | varchar(32) | YES  |     | NULL    |       |
 | changed_date  | datetime    | YES  |     | NULL    |       |
 | changed_by    | varchar(32) | YES  |     | NULL    |       |
 +---------------+-------------+------+-----+---------+-------+

 */
