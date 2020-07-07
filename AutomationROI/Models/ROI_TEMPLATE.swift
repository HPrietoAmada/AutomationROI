//
//  ROI_TEMPLATE.swift
//  AutomationROI
//
//  Created by HPrietoAmada on 6/17/20.
//  Copyright © 2020 IT Support. All rights reserved.
//

import Foundation

struct ROI_TEMPLATE: Codable {
    public var templateId: Int? // 'ROI'
    public var templateName: String?
    public var tableName: String?
    public var columnName: String?
    public var label: String?
    public var inputType: String? // 'IN', 'FIX', 'CALC', etc
    public var valueType: String? // 'NUMB', 'TEXT', 'PERC', etc
    public var valueCount: Int?
    public var sortOrder: Int?
    public var status: Int? // 0 or 1
    public var createdDate: String?
    public var createdBy: String?
    public var changedDate: String?
    public var changedBy: String?

    enum CodingKeys: String, CodingKey {
        case templateId = "template_id"
        case templateName = "template_name"
        case tableName = "table_name"
        case columnName = "column_name"
        case label = "label"
        case inputType = "input_type"
        case valueType = "value_type"
        case valueCount = "value_count"
        case sortOrder = "sort_order"
        case status = "status"
        case createdDate = "created_date"
        case createdBy = "created_by"
        case changedDate = "changed_date"
        case changedBy = "changed_by"
    }

    init(from decoder: Decoder) throws {
        let values = try decoder.container(keyedBy: CodingKeys.self)
        templateId = try values.decodeIfPresent(Int.self, forKey: .templateId)
        templateName = try values.decodeIfPresent(String.self, forKey: .templateName)
        tableName = try values.decode(String.self, forKey: .tableName)
        columnName = try values.decodeIfPresent(String.self, forKey: .columnName)
        label = try values.decodeIfPresent(String.self, forKey: .label)
        inputType = try values.decodeIfPresent(String.self, forKey: .inputType)
        valueType = try values.decodeIfPresent(String.self, forKey: .valueType)
        valueCount = try values.decodeIfPresent(Int.self, forKey: .valueCount)
        sortOrder = try values.decodeIfPresent(Int.self, forKey: .sortOrder)
        status = try values.decodeIfPresent(Int.self, forKey: .status)
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
 | template_id   | smallint(6) | YES  |     | NULL    |       |
 | template_name | varchar(30) | YES  |     | NULL    |       |
 | table_name    | varchar(30) | YES  |     | NULL    |       |
 | column_name   | varchar(50) | YES  |     | NULL    |       |
 | label         | varchar(50) | YES  |     | NULL    |       |
 | input_type    | varchar(50) | YES  |     | NULL    |       |
 | value_type    | varchar(50) | YES  |     | NULL    |       |
 | value_count   | tinyint(4)  | YES  |     | NULL    |       |
 | sort_order    | tinyint(4)  | YES  |     | NULL    |       |
 | status        | tinyint(4)  | YES  |     | NULL    |       |
 | created_date  | datetime    | YES  |     | NULL    |       |
 | created_by    | varchar(32) | YES  |     | NULL    |       |
 | changed_date  | datetime    | YES  |     | NULL    |       |
 | changed_by    | varchar(32) | YES  |     | NULL    |       |
 +---------------+-------------+------+-----+---------+-------+

 */
