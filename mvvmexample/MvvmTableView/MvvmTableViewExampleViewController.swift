//
//  MvvmTableViewExampleViewController.swift
//  swift-stuff
//
//  Created by Jay Shukla on 6/26/17.
//  Copyright © 2017 Jay Shukla. All rights reserved.
//

import UIKit
import Foundation

class MvvmTableViewExampleViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    
    
    @IBOutlet weak var tableView: UITableView!
    var viewModel: MvvmViewModel? {
        didSet {
            if let _ = viewIfLoaded {
                tableView.reloadData()
            }
        }
    }
    
    fileprivate lazy var basicCellNib: UINib = {
        return UINib(nibName: "BasicCell", bundle: nil)
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        tableView.register(basicCellNib, forCellReuseIdentifier: basicCellIdentifier)
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return viewModel?.tableData?.count ?? 0
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        if let vm = viewModel {
            let model = vm.tableData?[indexPath.row]
            if let model = model {
                return model.getCellInstance(tableView: tableView, indexPath: indexPath)
            }
            else {
                return UITableViewCell()
            }
        }
        else {
            return UITableViewCell()
        }
    }
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    
}
