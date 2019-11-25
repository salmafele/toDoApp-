//
//  dueViewController.swift
//  toDo
//
//  Created by Salma on 11/24/19.
//  Copyright © 2019 Salma. All rights reserved.
//

import UIKit

class dueViewController: UIViewController {
    
    @IBOutlet weak var today: UILabel!
    @IBOutlet weak var dueView: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        getCurrentDate()
    }
    
    func getCurrentDate() {
        let formatter = DateFormatter()
        formatter.dateFormat = "MM-dd-yyyy"
        
        let str = formatter.string(from: Date())
        today.text = ("Today's date: " + str)
    }

}
