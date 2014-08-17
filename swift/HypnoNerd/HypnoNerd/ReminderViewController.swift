//
//  ReminderViewController.swift
//  HypnoNerd
//
//  Created by Omer Wazir on 8/16/14.
//  Copyright (c) 2014 Omer Wazir. All rights reserved.
//

import UIKit

class ReminderViewController: UIViewController {
    @IBOutlet weak var datePicker:UIDatePicker?
    
    
    @IBAction func addReminder(sender:AnyObject){
        if let datePicker = self.datePicker{
            print("Setting a reminder for \(datePicker.date)");
        }
    }
}
