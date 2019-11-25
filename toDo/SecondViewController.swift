//
//  SecondViewController.swift
//  toDo
//
//  Created by Salma on 11/23/19.
//  Copyright © 2019 Salma. All rights reserved.
//

import UIKit

class SecondViewController: UIViewController {

    
    @IBOutlet weak var descriptionLabel: UILabel!
    @IBOutlet weak var descriptionTextField: UITextField!
    @IBOutlet weak var timeLabel: UILabel!
    @IBOutlet weak var timePicker: UIDatePicker!
    
    @IBAction func timePickerChanged(_ sender: Any) {
        
        let formatter = DateFormatter()
        formatter.dateFormat = "MM-dd-yyyy"
        let myString = formatter.string(from: Date()) //string purpose I add here
        
        // convert your string to date
        let yourDate = formatter.date(from: myString) //then again set the date format whhich type of output you need
        formatter.dateFormat = "dd-MMM-yyyy"
        
        // again convert your date to string
        let myStringafd = formatter.string(from: yourDate!)
        print(myStringafd)
        
        let strDate = formatter.string(from: timePicker.date)
        timeLabel.text = strDate
    }
    
    @IBAction func addButton(_ sender: Any) {
        
        if (descriptionTextField.text != "")
        {
            // add a task to the list
            list.append((descriptionTextField.text!) + "\t\t\t\t" + (timeLabel.text!))
            descriptionTextField.text = ""
        }

        // show alert that task is added
       // let alertController = UIAlertController(title: "Task Added", message: "Task Added", preferredStyle: .alert)
         //   alertController.addAction(UIAlertAction(title: "DONE!", style: .default))
        //    self.present(alertController, animated: true, completion: nil)
        
        }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = UIColor(named: "darkPink")
    }
}

