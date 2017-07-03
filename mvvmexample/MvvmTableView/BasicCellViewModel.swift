//
//  BasicCellViewModel.swift
//  swift-stuff
//
//  Created by Jay Shukla on 6/30/17.
//  Copyright © 2017 Jay Shukla. All rights reserved.
//

import UIKit

protocol MvvmCellProtocol {
    func getCellInstance(tableView: UITableView, indexPath: IndexPath ) -> UITableViewCell
}

struct BasicCellViewModel: MvvmCellProtocol {
    
    let title: String
    
    func getCellInstance(tableView: UITableView, indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: basicCellIdentifier, for: indexPath) as! BasicCell
        
        cell.configure(viewModel: self)
        
        return cell
        
    }
    
    
    
}
