//
//  MvvmViewModel.swift
//  swift-stuff
//
//  Created by Jay Shukla on 7/3/17.
//  Copyright © 2017 Jay Shukla. All rights reserved.
//

import Foundation

struct MvvmViewModel {
    var tableData: [MvvmCellProtocol]?
    
    init() {
        tableData = [BasicCellViewModel(title: "Hello"), BasicCellViewModel(title: "Hi")]
    }
    
}
