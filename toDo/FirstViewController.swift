//
//  FirstViewController.swift
//  toDo
//
//  Created by Salma on 11/23/19.
//  Copyright © 2019 Salma. All rights reserved.
//

import UIKit

var list = ["Take the trash out", "Pay bills", "Walk the dog", "Water the plant", "Pack your bags"]

class FirstViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {

    @IBOutlet weak var myTableView: UITableView!

  
    public func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int
    {
        return (list.count) // returns a number or rows for as many items I have in the list

    }
    
    public func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell
    {
        let toDoCell = tableView.dequeueReusableCell(withIdentifier: "toDoCell", for: indexPath) as UITableViewCell

        toDoCell.tintColor = UIColor(named: "darkYellow")
        toDoCell.backgroundColor = UIColor(named: "darkPink")

        toDoCell.textLabel?.text = list[indexPath.row] // goes through all they items in the Array
        return(toDoCell)
    }
    
    // (De)select tasks done
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        
        if tableView.cellForRow(at: indexPath)?.accessoryType == UITableViewCell.AccessoryType.checkmark {
            tableView.cellForRow(at: indexPath)?.accessoryType = UITableViewCell.AccessoryType.none
        }
        else {
            tableView.cellForRow(at: indexPath)?.accessoryType = UITableViewCell.AccessoryType.checkmark
        }
    }
    
    // Function to delete an item from the list
    func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCell.EditingStyle, forRowAt indexPath: IndexPath)
    {
        view.backgroundColor = UIColor(named: "darkPink")

        if indexPath.row < list.count
        {
            list.remove(at: indexPath.row)
            tableView.deleteRows(at: [indexPath], with: .top)
        }
    }

    
    override func viewDidAppear(_ animated: Bool) {
        myTableView.reloadData()
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = UIColor(named: "darkPink")
    }
}

