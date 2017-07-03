//
//  FirstViewController.swift
//  swift-stuff
//
//  Created by Jay Shukla on 7/3/17.
//  Copyright © 2017 Jay Shukla. All rights reserved.
//

import UIKit

class FirstViewController: UIViewController {
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "MvvmTableViewSegue" {
            if let destinationVC = segue.destination as? MvvmTableViewExampleViewController {
                destinationVC.viewModel = MvvmViewModel()
            }
        }
    }
    
}
