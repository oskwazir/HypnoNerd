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

-(instancetype)initWithNibName:(NSString *)nibNameOrNil
                        bundle:(NSBundle *)nibBundleOrNil{
    self = [super initWithNibName:nibNameOrNil
                           bundle:nibBundleOrNil];
    
    if (self) {
        //Set the tab bar item's title
        self.tabBarItem.title = @"Reminder";
        
        //create a UIImage from a file
        //This will create Hypno@2x.png on retina display devices
        UIImage *image = [UIImage imageNamed:@"Time"];
        
        //put that image on the tab bar item
        self.tabBarItem.image = image;
    }
    
    return self;
}


-(IBAction)addReminder:(id)sender{

    NSDate *date = self.datePicker.date;
    NSLog(@"Setting a reminder for %@", date);
}

@end
