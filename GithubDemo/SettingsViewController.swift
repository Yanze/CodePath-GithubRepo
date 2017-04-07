//
//  SettingsViewController.swift
//  GithubDemo
//
//  Created by yanze on 4/5/17.
//  Copyright © 2017 codepath. All rights reserved.
//

import UIKit

class SettingsViewController: UITableViewController {
    
    @IBOutlet weak var numberLabel: UILabel!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

    }
    
    @IBAction func sliderValueChange(_ sender: UISlider) {
        numberLabel.text = "\(Int(sender.value))"
        
    }
    
}


