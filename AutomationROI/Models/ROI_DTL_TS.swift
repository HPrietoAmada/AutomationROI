//
//  roi_dtl_ts.swift
//  AutomationROI
//
//  Created by HPrietoAmada on 6/23/20.
//  Copyright © 2020 IT Support. All rights reserved.
//

import Foundation

/*

 +---------------------+--------------+------+-----+---------+-------+
 | Field               | Type         | Null | Key | Default | Extra |
 +---------------------+--------------+------+-----+---------+-------+
 | hdr_id              | int(11)      | YES  |     | NULL    |       |
 | model               | varchar(18)  | YES  |     | NULL    |       |
 | ts_no               | tinyint(4)   | YES  |     | NULL    |       |
 | material_type       | varchar(30)  | YES  |     | NULL    |       |
 | a_time_per_sheet    | decimal(5,2) | YES  |     | NULL    |       |
 | d_sheet_weight      | decimal(5,2) | YES  |     | NULL    |       |
 | cost_per_pound      | decimal(5,2) | YES  |     | NULL    |       |
 | b_perc_material_mix | decimal(5,2) | YES  |     | NULL    |       |
 | c_eq_factor_a_x_b   | decimal(5,2) | YES  |     | NULL    |       |
 | e_eq_factor_d_x_b   | decimal(5,2) | YES  |     | NULL    |       |
 | created_date        | datetime     | YES  |     | NULL    |       |
 | created_by          | varchar(32)  | YES  |     | NULL    |       |
 | changed_date        | datetime     | YES  |     | NULL    |       |
 | changed_by          | varchar(32)  | YES  |     | NULL    |       |
 +---------------------+--------------+------+-----+---------+-------+

 */

struct ROI_DTL_TS: Codable {

    public var hdrId: Int?
    public var model: String?
    public var tsNo: Int?
    public var materialType: String?
    public var aTimePerSheet: Double?
    public var dSheetWeight: Double?
    public var costPerPound: Double?
    public var bPercMaterialMix: Double?
    public var cEqFactorAXB: Double?
    public var eEqFactorDXB: Double?
    public var createdDate: String?
    public var createdBy: String?
    public var changedDate: String?
    public var changedBy: String?

    enum CodingKeys: String, CodingKey {
        case hdrId = "HDR_ID"
        case model = "MODEL"
        case tsNo = "TS_NO"
        case materialType = "MATERIAL_TYPE"
        case aTimePerSheet = "A_TIME_PER_SHEET"
        case dSheetWeight = "D_SHEET_WEIGHT"
        case costPerPound = "COST_PER_POUND"
        case bPercMaterialMix = "B_PERC_MATERIAL_MIX"
        case cEqFactorAXB = "C_EQ_FACTOR_A_X_B"
        case eEqFactorDXB = "E_EQ_FACTOR_D_X_B"
        case createdDate = "CREATED_DATE"
        case createdBy = "CREATED_BY"
        case changedDate = "CHANGED_DATE"
        case changedBy = "CHANGED_BY"
    }

    init(from decoder: Decoder) throws {
        let values = try decoder.container(keyedBy: CodingKeys.self)
        hdrId = try values.decodeIfPresent(Int.self, forKey: .hdrId)
        model = try values.decodeIfPresent(String.self, forKey: .model)
        tsNo = try values.decodeIfPresent(Int.self, forKey: .tsNo)
        materialType = try values.decodeIfPresent(String.self, forKey: .materialType)
        aTimePerSheet = try values.decodeIfPresent(Double.self, forKey: .aTimePerSheet)
        dSheetWeight = try values.decodeIfPresent(Double.self, forKey: .dSheetWeight)
        costPerPound = try values.decodeIfPresent(Double.self, forKey: .costPerPound)
        bPercMaterialMix = try values.decodeIfPresent(Double.self, forKey: .bPercMaterialMix)
        cEqFactorAXB = try values.decodeIfPresent(Double.self, forKey: .cEqFactorAXB)
        eEqFactorDXB = try values.decodeIfPresent(Double.self, forKey: .eEqFactorDXB)
        createdDate = try values.decodeIfPresent(String.self, forKey: .createdDate)
        createdBy = try values.decodeIfPresent(String.self, forKey: .createdBy)
        changedDate = try values.decodeIfPresent(String.self, forKey: .changedDate)
        changedBy = try values.decodeIfPresent(String.self, forKey: .changedBy)
    }

}
