//
//  BNRHypnosisViewController.m
//  HypnoNerd
//
//  Created by Omer Wazir on 8/13/14.
//  Copyright (c) 2014 Omer Wazir. All rights reserved.
//

#import "BNRHypnosisViewController.h"
#import "BNRHypnosisView.h"

@implementation BNRHypnosisViewController

-(instancetype)initWithNibName:(NSString *)nibNameOrNil
                        bundle:(NSBundle *)nibBundleOrNil{
    self = [super initWithNibName:nibNameOrNil
                           bundle:nibBundleOrNil];
    
    if (self) {
        //Set the tab bar item's title
        self.tabBarItem.title = @"Hypnotize";
        
        //create a UIImage from a file
        //This will create Hypno@2x.png on retina display devices
        UIImage *image = [UIImage imageNamed:@"Hypno.png"];
        
        //put that image on the tab bar item
        self.tabBarItem.image = image;
    }
    
    return self;
}

-(void) viewDidLoad{
    // Always call the super implementation of viewDidLoad
    [super viewDidLoad];
    NSLog(@"BNRHypnosisViewController loaded its view.");
}

-(void)loadView{
    //create a view
    CGRect frame = [UIScreen mainScreen].bounds;
    BNRHypnosisView *backgroundView = [[BNRHypnosisView alloc] initWithFrame:frame];
    UISegmentedControl *colorSegmentedControl = [[UISegmentedControl alloc]
                                                 initWithItems:@[@"Red",@"Green",@"Blue"]];
    
    //how do I lay this out so it's correctly sized and positioned without me guessing coordinates?
    colorSegmentedControl.frame = CGRectMake(frame.origin.x + 10,
                                             frame.origin.y + 20,
                                             frame.size.width * 0.90, 25);
    colorSegmentedControl.backgroundColor = [UIColor lightGrayColor];
    //add a UISegmentedControl somewhere here…
    
    //set backgroundView as “the” view of the view controller
    [backgroundView addSubview:colorSegmentedControl];
    self.view = backgroundView;
}

@end
