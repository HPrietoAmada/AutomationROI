//
//  ROIViewController.swift
//  AutomationROI
//
//  Created by HPrietoAmada on 7/6/20.
//  Copyright © 2020 IT Support. All rights reserved.
//

import UIKit
import Charts

class ROIViewController: UIViewController {

    var machine1: [Double] = [
        181998,
        12313.48,
        1290,
        12384,
        21485,
        229470,
        433328.93
    ]

    var machine2: [Double] = [
        318497,
        14555,
        1806,
        0,
        68715,
        401573,
        758325.63
    ]

    lazy var scrollView: UIScrollView = {
        let view = UIScrollView()
        view.translatesAutoresizingMaskIntoConstraints = false
        return view
    }()

    let stackView: UIStackView = {
        let view = UIStackView()
        view.axis = .vertical
        view.translatesAutoresizingMaskIntoConstraints = false
        return view
    }()

    lazy var costStructureTitleView: TitleView = {
        let view = TitleView()
        view._title = "Revenues & Cost Structure"
        return view
    }()

    lazy var machineCompareView: CompareView = {
        let view = CompareView()
        view.item1TextView.text = "EN3015AJ-9k"
        view.item1TextView._fontType = .demiBold
        view.item2TextView.text = "EN3015AJ-9K+AMS-CL"
        view.item2TextView._fontType = .demiBold
        view.item1TextView.textAlignment = .center
        view.item2TextView.textAlignment = .center
        return view
    }()

    lazy var steelCostCompareView: CompareView = {
        let view = CompareView()
        view.titleTextView.text = "Steel Cost"
        view.item1TextView.text = "$181,998"
        view.item2TextView.text = "$318,497"
        view.item1TextView.textAlignment = .center
        view.item2TextView.textAlignment = .center
        return view
    }()

    lazy var machineCostCompareView: CompareView = {
        let view = CompareView()
        view.titleTextView.text = "Machine Cost"
        view.item1TextView.text = "$12,313.48"
        view.item2TextView.text = "$14,555"
        view.item1TextView.textAlignment = .center
        view.item2TextView.textAlignment = .center
        return view
    }()

    lazy var operatingCostCompareView: CompareView = {
        let view = CompareView()
        view.titleTextView.text = "Operating Cost"
        view.item1TextView.text = "$1,290"
        view.item2TextView.text = "$0"
        view.item1TextView.textAlignment = .center
        view.item2TextView.textAlignment = .center
        return view
    }()

    lazy var laborCostCompareView: CompareView = {
        let view = CompareView()
        view.titleTextView.text = "Labor Cost"
        view.item1TextView.text = "$12,384"
        view.item2TextView.text = "$0"
        view.item1TextView.textAlignment = .center
        view.item2TextView.textAlignment = .center
        return view
    }()

    lazy var profitCompareView: CompareView = {
        let view = CompareView()
        view.titleTextView.text = "Profit"
        view.item1TextView.text = "$21,485"
        view.item2TextView.text = "$66,715"
        view.item1TextView.textAlignment = .center
        view.item2TextView.textAlignment = .center
        return view
    }()

    lazy var revenueCompareView: CompareView = {
        let view = CompareView()
        view.titleTextView.text = "Revenue"
        view.item1TextView.text = "$229,470"
        view.item2TextView.text = "$401,573"
        view.item1TextView.textAlignment = .center
        view.item2TextView.textAlignment = .center
        return view
    }()

    lazy var steelMoCompareView: CompareView = {
        let view = CompareView()
        view.titleTextView.text = "Steel/Mo"
        view.item1TextView.text = "$433,328.93"
        view.item2TextView.text = "$758,325.63"
        view.item1TextView.textAlignment = .center
        view.item2TextView.textAlignment = .center
        return view
    }()

    lazy var standaloneVsAutomationTitleView: TitleView = {
        let view = TitleView()
        view._title = "Standalone vs Automation"
        return view
    }()

    lazy var groupedBarGraphView: GroupedBarChart = {
        let view = GroupedBarChart()
        return view
    }()

    lazy var roiTitleView: TitleView = {
        let view = TitleView()
        view._title = "Return on Investment"
        return view
    }()

    lazy var roiMachineModelCompareView: CompareView = {
        let view = CompareView()
        view.item1TextView.text = "EN3015AJ-9k"
        view.item1TextView._fontType = .demiBold
        view.item2TextView.text = "EN3015AJ-9K + AMS-CL"
        view.item2TextView._fontType = .demiBold
        view.item1TextView.textAlignment = .center
        view.item2TextView.textAlignment = .center
        return view
    }()

    lazy var roiFinancedAmountCompareView: CompareView = {
        let view = CompareView()
        view.titleTextView.text = "Financed Amount"
        view.titleTextView.textColor = UIColor.StatusColors.blue
        view.titleTextView._fontType = .demiBold
        view.item1TextView.text = String(format: "$%.02f", 811309.00)
        view.item1TextView.textColor = UIColor.StatusColors.red
        view.item2TextView.text = String(format: "$%.02f", 827023.00)
        view.item2TextView.textColor = UIColor.StatusColors.red
        view.item1TextView.textAlignment = .center
        view.item2TextView.textAlignment = .center
        return view
    }()

    func generateTestData() {
        for _ in 1 ... 26 {
            stackView.arrangedSubviews.filter({ $0.tag == 99 }).forEach { (arrangedSubview) in
                stackView.removeArrangedSubview(arrangedSubview)
            }
        }
        let startingPrice1: Double = 219948
        let startingPrice2: Double = 774128
        for year in 1 ... 26 {
            let amount1: Double = startingPrice1 * Double(year)
            let amount2: Double = startingPrice2 * Double(year)
            let compareView: CompareView = CompareView()
            compareView.tag = 99
            compareView.titleTextView.text = "Year \(year)"
            compareView.item1TextView.text = String(format: "$%.02f", amount1)
            compareView.item1TextView.textAlignment = .center
            compareView.item2TextView.text = String(format: "$%.02f", amount2)
            compareView.item2TextView.textAlignment = .center
            stackView.addArrangedSubview(compareView)
        }

        //scrollView.contentSize = CGSize(width: scrollView.bounds.width, height: stackView.frame.height)
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        initSubviews()
    }

    private func initSubviews() {
        navigationItem.title = "Standalone vs Automation"
        view.backgroundColor = .white
        view.addSubview(scrollView)
        scrollView.addSubview(stackView)

        scrollView.topAnchor.constraint(equalTo: view.topAnchor, constant: view.safeAreaInsets.top).isActive = true
        scrollView.leftAnchor.constraint(equalTo: view.leftAnchor, constant: 0).isActive = true
        scrollView.rightAnchor.constraint(equalTo: view.rightAnchor, constant: 0).isActive = true
        scrollView.bottomAnchor.constraint(equalTo: view.bottomAnchor).isActive = true

        stackView.topAnchor.constraint(equalTo: scrollView.topAnchor).isActive = true
        stackView.centerXAnchor.constraint(equalTo: scrollView.centerXAnchor).isActive = true
        stackView.widthAnchor.constraint(equalTo: scrollView.widthAnchor, constant: -40).isActive = true
        stackView.bottomAnchor.constraint(equalTo: scrollView.bottomAnchor).isActive = true

        stackView.addArrangedSubview(costStructureTitleView)
        stackView.addArrangedSubview(machineCompareView)
        stackView.addArrangedSubview(steelCostCompareView)
        stackView.addArrangedSubview(machineCostCompareView)
        stackView.addArrangedSubview(operatingCostCompareView)
        stackView.addArrangedSubview(laborCostCompareView)
        stackView.addArrangedSubview(profitCompareView)
        stackView.addArrangedSubview(revenueCompareView)
        stackView.addArrangedSubview(steelMoCompareView)
        stackView.addArrangedSubview(standaloneVsAutomationTitleView)
        stackView.addArrangedSubview(groupedBarGraphView)
        stackView.addArrangedSubview(roiTitleView)
        stackView.addArrangedSubview(roiMachineModelCompareView)
        stackView.addArrangedSubview(roiFinancedAmountCompareView)
        generateTestData()
    }

}
