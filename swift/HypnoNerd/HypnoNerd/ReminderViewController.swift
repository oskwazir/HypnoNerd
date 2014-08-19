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
    
    override init(){
        
        //so passing nil as nibName does not do a xib lookup like it does in Obj-c
        //I wonder why
        super.init(nibName: "ReminderViewController", bundle: nil)
        self.tabBarItem.title = "Reminder";
        self.tabBarItem.image = UIImage(named: "reminder.png");
    }
    
    @IBAction func addReminder(sender:AnyObject){
        if let datePicker = self.datePicker{
            print("Setting a reminder for \(datePicker.date)");
            
            let note:UILocalNotification = UILocalNotification();
            note.alertBody = "Hypnotize me!";
            note.fireDate = datePicker.date;
            UIApplication.sharedApplication().scheduleLocalNotification(note);
        }
    }
}
