//
//  ROI_DTL.swift
//  AutomationROI
//
//  Created by HPrietoAmada on 6/17/20.
//  Copyright © 2020 IT Support. All rights reserved.
//

import Foundation

struct ROI_DTL: Codable {

    public var hdrId: Int?
    public var model: String?
    public var m1Price: Double?
    public var m2Price: Double?
    public var totalSalesPrice: Double?
    public var percentDownPayment: Double?
    public var totalFinancePrice: Double?
    public var avgTimePerSheet: Double?
    public var procChargePerHr: Double?
    public var hrsPerDay: Int?
    public var daysPerWeek: Int?
    public var operatorPerShift: Int?
    public var noMaterialHandler: Int?
    public var costPerHrOperator: Double?
    public var costPerHrHandler: Double?
    public var costPerHrMachOp: Double?
    public var utilRateOfMachine: Double?
    public var utilRateOfSheet: Double?
    public var machProductivityRate: Double?
    public var interestRate: Double?
    public var noPaymentPerYr: Int?
    public var noMonthsInLoan: Int?
    public var monthlyPayment: Double?
    public var totalLoanInterest: Double?
    public var createdDate: String?
    public var createdBy: String?
    public var changedDate: String?
    public var changedBy: String?

    enum CodingKeys: String, CodingKey {
        case hdrId = "HDR_ID"
        case model = "MODEL"
        case m1Price = "M1_PRICE"
        case m2Price = "M2_PRICE"
        case totalSalesPrice = "TOTAL_SALES_PRICE"
        case percentDownPayment = "PERCENT_DOWN_PAYMENT"
        case totalFinancePrice = "TOTAL_FINANCE_PRICE"
        case avgTimePerSheet = "AVG_TIME_PER_SHEET"
        case procChargePerHr = "PROC_CHARGE_PER_HR"
        case hrsPerDay = "HRS_PER_DAY"
        case daysPerWeek = "DAYS_PER_WEEK"
        case operatorPerShift = "OPERATOR_SHIFT_PER_SHIFT"
        case noMaterialHandler = "NO_MATERIAL_HANDLER"
        case costPerHrOperator = "NO_COST_PER_HR_OPERATOR"
        case costPerHrHandler = "NO_COST_PER_HR_HANDLER"
        case costPerHrMachOp = "NO_COST_PER_HR_MACH_OP"
        case utilRateOfMachine = "UTIL_RATE_OF_MACHINE"
        case utilRateOfSheet = "UTIL_RATE_OF_SHEET"
        case machProductivityRate = "MACH_PRODUCTIVITY_RATE"
        case interestRate = "INTEREST_RATE"
        case noPaymentPerYr = "NO_PAYMENT_PER_YR"
        case noMonthsInLoan = "NO_MONTHS_IN_LOAN"
        case monthlyPayment = "MONTHLY_PAYMENT"
        case totalLoanInterest = "TOTAL_LOAN_INTEREST"
        case createdDate = "CREATED_DATE"
        case createdBy = "CREATED_BY"
        case changedDate = "CHANGED_DATE"
        case changedBy = "CHANGED_BY"
    }

    init(from decoder: Decoder) throws {
        let values = try decoder.container(keyedBy: CodingKeys.self)
        hdrId = try values.decodeIfPresent(Int.self, forKey: .hdrId)
        model = try values.decodeIfPresent(String.self, forKey: .model)
        m1Price = try values.decodeIfPresent(Double.self, forKey: .m1Price)
        m2Price = try values.decodeIfPresent(Double.self, forKey: .m2Price)
        totalSalesPrice = try values.decodeIfPresent(Double.self, forKey: .totalSalesPrice)
        percentDownPayment = try values.decodeIfPresent(Double.self, forKey: .percentDownPayment)
        totalFinancePrice = try values.decodeIfPresent(Double.self, forKey: .totalFinancePrice)
        avgTimePerSheet = try values.decodeIfPresent(Double.self, forKey: .avgTimePerSheet)
        procChargePerHr = try values.decodeIfPresent(Double.self, forKey: .procChargePerHr)
        hrsPerDay = try values.decodeIfPresent(Int.self, forKey: .hrsPerDay)
        daysPerWeek = try values.decodeIfPresent(Int.self, forKey: .daysPerWeek)
        operatorPerShift = try values.decodeIfPresent(Int.self, forKey: .operatorPerShift)
        noMaterialHandler = try values.decodeIfPresent(Int.self, forKey: .noMaterialHandler)
        costPerHrOperator = try values.decodeIfPresent(Double.self, forKey: .costPerHrOperator)
        costPerHrHandler = try values.decodeIfPresent(Double.self, forKey: .costPerHrHandler)
        costPerHrMachOp = try values.decodeIfPresent(Double.self, forKey: .costPerHrMachOp)
        utilRateOfMachine = try values.decodeIfPresent(Double.self, forKey: .utilRateOfMachine)
        utilRateOfMachine = try values.decodeIfPresent(Double.self, forKey: .utilRateOfMachine)
        machProductivityRate = try values.decodeIfPresent(Double.self, forKey: .machProductivityRate)
        interestRate = try values.decodeIfPresent(Double.self, forKey: .interestRate)
        noPaymentPerYr = try values.decodeIfPresent(Int.self, forKey: .noPaymentPerYr)
        noMonthsInLoan = try values.decodeIfPresent(Int.self, forKey: .noMonthsInLoan)
        monthlyPayment = try values.decodeIfPresent(Double.self, forKey: .monthlyPayment)
        totalLoanInterest = try values.decodeIfPresent(Double.self, forKey: .totalLoanInterest)
        createdDate = try values.decodeIfPresent(String.self, forKey: .createdDate)
        createdBy = try values.decodeIfPresent(String.self, forKey: .createdBy)
        changedDate = try values.decodeIfPresent(String.self, forKey: .changedDate)
        changedBy = try values.decodeIfPresent(String.self, forKey: .changedBy)
    }

}

/*

+------------------------+---------------+------+-----+---------+-------+
| hdr_id                 | int(11)       | YES  |     | NULL    |       |
| model                  | varchar(18)   | YES  |     | NULL    |       |
| m1_price               | decimal(10,2) | YES  |     | NULL    |       |
| m2_price               | decimal(10,2) | YES  |     | NULL    |       |
| total_sales_price      | decimal(10,2) | YES  |     | NULL    |       |
| percent_down_payment   | decimal(10,2) | YES  |     | NULL    |       |
| total_finance_price    | decimal(10,2) | YES  |     | NULL    |       |
| avg_time_per_sheet     | decimal(10,2) | YES  |     | NULL    |       |
| proc_charge_per_hr     | decimal(10,2) | YES  |     | NULL    |       |
| hrs_per_day            | tinyint(4)    | YES  |     | NULL    |       |
| days_per_week          | tinyint(4)    | YES  |     | NULL    |       |
| operator_per_shift     | tinyint(4)    | YES  |     | NULL    |       |
| no_material_handler    | tinyint(4)    | YES  |     | NULL    |       |
| cost_per_hr_operator   | decimal(10,2) | YES  |     | NULL    |       |
| cost_per_hr_handler    | decimal(10,2) | YES  |     | NULL    |       |
| cost_per_hr_mach_op    | decimal(10,2) | YES  |     | NULL    |       |
| util_rate_of_machine   | decimal(10,2) | YES  |     | NULL    |       |
| util_rate_of_sheet     | decimal(10,2) | YES  |     | NULL    |       |
| mach_productivity_rate | decimal(10,2) | YES  |     | NULL    |       |
| interest_rate          | decimal(10,2) | YES  |     | NULL    |       |
| no_payment_per_yr      | tinyint(4)    | YES  |     | NULL    |       |
| no_months_in_loan      | tinyint(4)    | YES  |     | NULL    |       |
| monthly_payment        | decimal(10,2) | YES  |     | NULL    |       |
| total_loan_interest    | decimal(10,2) | YES  |     | NULL    |       |
| created_date           | datetime      | YES  |     | NULL    |       |
| created_by             | varchar(32)   | YES  |     | NULL    |       |
| changed_date           | datetime      | YES  |     | NULL    |       |
| changed_by             | varchar(32)   | YES  |     | NULL    |       |
+------------------------+---------------+------+-----+---------+-------+

*/
