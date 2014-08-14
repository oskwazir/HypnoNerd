//
//  BNRReminderViewController.m
//  HypnoNerd
//
//  Created by Omer Wazir on 8/14/14.
//  Copyright (c) 2014 Omer Wazir. All rights reserved.
//

#import "BNRReminderViewController.h"

@interface BNRReminderViewController()

@property (nonatomic, weak) IBOutlet UIDatePicker *datePicker;

@end

@implementation BNRReminderViewController

-(IBAction)addReminder:(id)sender{

    NSDate *date = self.datePicker.date;
    NSLog(@"Setting a reminder for %@", date);
}

@end
