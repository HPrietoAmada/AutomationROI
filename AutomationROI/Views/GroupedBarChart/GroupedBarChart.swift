//
//  GroupedBarChart.swift
//  AutomationROI
//
//  Created by HPrietoAmada on 7/6/20.
//  Copyright © 2020 IT Support. All rights reserved.
//

import UIKit
import Charts

class GroupedBarChart: BarChartView {

    var labels: [String] = [
        "Steel Cost", "Machine Cost", "Operating Cost", "Labor Cost", "Profit", "Revenue", "Steel/Mo"
    ]

    var groupedBarData: [[Double]] = [
            [
                181998,
                12313.48,
                1290,
                12384,
                21485,
                229470,
                433328.93
            ],[
                318497,
                14555,
                1806,
                0,
                68715,
                401573,
                758325.63
            ]
        ] {
        didSet {
            if groupedBarData.count != 2 { return }
            setChartData()
        }
    }

    private func initSubviews() {
        translatesAutoresizingMaskIntoConstraints = false

        xAxis.valueFormatter = IndexAxisValueFormatter(values: labels)

        legend.enabled = true
        legend.horizontalAlignment = .right
        legend.verticalAlignment = .top
        legend.orientation = .vertical
        legend.drawInside = true
        legend.yOffset = 10.0;
        legend.xOffset = 10.0;
        legend.yEntrySpace = 0.0;

        //xaxis.valueFormatter = axisFormatDelegate
        xAxis.drawGridLinesEnabled = true
        xAxis.labelPosition = .bottom
        xAxis.centerAxisLabelsEnabled = true
        xAxis.granularity = 1


        let leftAxisFormatter = NumberFormatter()
        leftAxisFormatter.maximumFractionDigits = 1

        let yaxis = leftAxis
        yaxis.spaceTop = 0.35
        yaxis.axisMinimum = 0
        yaxis.drawGridLinesEnabled = false

        setChartData()

        gridBackgroundColor = .white
        backgroundColor = .white
    }

    func setChartData() {
        backgroundColor = .orange
        var leftDataEntries: [BarChartDataEntry] = [BarChartDataEntry]()
        var rightDataEntries: [BarChartDataEntry] = [BarChartDataEntry]()
        for i in 0 ..< groupedBarData[0].count {
            let leftDataEntry = BarChartDataEntry(x: Double(i), y: groupedBarData[0][i])
            leftDataEntries.append(leftDataEntry)

            let rightDataEntry = BarChartDataEntry(x: Double(i), y: groupedBarData[1][i])
            rightDataEntries.append(rightDataEntry)
        }

        let leftChartDataSet = BarChartDataSet(entries: leftDataEntries, label: "EN3015AJ-9K")
        let rightChartDataSet = BarChartDataSet(entries: rightDataEntries, label: "EN3015AJ-9K + AMS-CL")
        leftChartDataSet.colors = [UIColor.StatusColors.blue]
        rightChartDataSet.colors = [UIColor.StatusColors.green]

        let dataSets: [BarChartDataSet] = [leftChartDataSet,rightChartDataSet]
        let chartData = BarChartData(dataSets: dataSets)

        let groupSpace = 0.3
        let barSpace = 0.05
        let barWidth = 0.3
        // (0.3 + 0.05) * 2 + 0.3 = 1.00 -> interval per "group"

        let groupCount = self.labels.count
        let startYear = 0


        chartData.barWidth = barWidth;
        xAxis.axisMinimum = Double(startYear)
        let gg = chartData.groupWidth(groupSpace: groupSpace, barSpace: barSpace)
        xAxis.axisMaximum = Double(startYear) + gg * Double(groupCount)

        chartData.groupBars(fromX: Double(startYear), groupSpace: groupSpace, barSpace: barSpace)

        self.data = chartData
    }

    override init(frame: CGRect) {
        super.init(frame: CGRect.zero)
        initSubviews()

        translatesAutoresizingMaskIntoConstraints = false
        heightAnchor.constraint(equalToConstant: 400).isActive = true
    }

    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }

}
