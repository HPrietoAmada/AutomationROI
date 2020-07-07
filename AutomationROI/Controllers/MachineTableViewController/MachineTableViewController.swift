//
//  MachineTableViewController.swift
//  AutomationROI
//
//  Created by HPrietoAmada on 7/6/20.
//  Copyright © 2020 IT Support. All rights reserved.
//

import UIKit

class MachineTableViewController: UIViewController {

    let cellId: String = "machine-tableview-cell"
    let headerId: String = "machine-tableview-header-cell"

    lazy var tableView: UITableView = {
        let view: UITableView = UITableView()
        view.separatorStyle = .none
        view.translatesAutoresizingMaskIntoConstraints = false
        return view
    }()

    override func viewDidLoad() {
        super.viewDidLoad()
        initSubviews()
    }

    private func initSubviews() {
        view.backgroundColor = .white
        view.addSubview(tableView)

        tableView.delegate = self
        tableView.dataSource = self
        tableView.register(MachineTableViewCell.self, forCellReuseIdentifier: cellId)
        tableView.register(TableViewHeaderCell.self, forHeaderFooterViewReuseIdentifier: headerId)
        tableView.topAnchor.constraint(equalTo: view.topAnchor, constant: view.safeAreaInsets.top).isActive = true
        tableView.bottomAnchor.constraint(equalTo: view.bottomAnchor).isActive = true
        tableView.leftAnchor.constraint(equalTo: view.leftAnchor, constant: 20).isActive = true
        tableView.rightAnchor.constraint(equalTo: view.rightAnchor, constant: 0).isActive = true

        navigationItem.rightBarButtonItem = UIBarButtonItem(title: "Add", style: .plain, target: self, action: #selector(handleAdd))
    }

    @objc func handleAdd() {
        let controller = ROI_HDRViewController()
        present(NavigationController(rootViewController: controller),
                animated: true,
                completion: nil
        )
    }
}
