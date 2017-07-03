//
//  BasicCell.swift
//  swift-stuff
//
//  Created by Jay Shukla on 6/30/17.
//  Copyright © 2017 Jay Shukla. All rights reserved.
//

import UIKit

let basicCellIdentifier = "BasicCell"

class BasicCell: UITableViewCell {
    
    @IBOutlet weak var cellTitle: UILabel!
    
    func configure(viewModel: BasicCellViewModel) {
        self.cellTitle.text = viewModel.title
    }
    
}
