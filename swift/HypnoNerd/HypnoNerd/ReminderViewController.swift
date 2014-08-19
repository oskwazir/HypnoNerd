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
    
    required init(coder: NSCoder) {
        fatalError("NSCoding not supported")
    }
    
    override init(nibName nibNameOrNil: String!, bundle nibBundleOrNil: NSBundle!) {
        super.init(nibName: nibNameOrNil, bundle: nibBundleOrNil)
        self.tabBarItem.title = "Reminder";
        self.tabBarItem.image = UIImage(named: "reminder.png");
    }
    
    
    @IBAction func addReminder(sender:AnyObject){
        if let datePicker = self.datePicker{
            print("Setting a reminder for \(datePicker.date)");
        }
    }
}
