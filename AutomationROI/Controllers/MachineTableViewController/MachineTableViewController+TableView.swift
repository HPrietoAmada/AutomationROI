//
//  MachineTableViewController+TableView.swift
//  AutomationROI
//
//  Created by HPrietoAmada on 7/6/20.
//  Copyright © 2020 IT Support. All rights reserved.
//

import UIKit

extension MachineTableViewController: UITableViewDelegate, UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 10
    }

    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: cellId, for: indexPath) as! MachineTableViewCell
        cell._fontSize = 14
        cell._fontType = .regular

        cell.machine1TitleLabel.text = "STANDALONE"
        cell.machine1Label.text = "EN3015AJ-9K"

        cell.machine2TitleLabel.text = "WITH AUTOMATION JUSTIFICATION"
        cell.machine2Label.text = "EN3015AJ-9K + AMS-CL"

        cell.customerNameTitleLabel.text = "CUSTOMER NAME"
        cell.customerNameLabel.text = "TESLA"

        cell.createdDateTitleLabel.text = "CREATED DATE"
        cell.createdDateLabel.text = "July 4th, 2020 12:45 pm"
        return cell
    }

    func tableView(_ tableView: UITableView, viewForHeaderInSection section: Int) -> UIView? {
        let header = tableView.dequeueReusableHeaderFooterView(withIdentifier: headerId) as! TableViewHeaderCell
        header._title = "Automation ROI"
        header._subtitle = "10 result(s) found"
        return header
    }

    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let controller = ROIViewController()
        navigationController?.pushViewController(controller, animated: true)
    }
    
}
