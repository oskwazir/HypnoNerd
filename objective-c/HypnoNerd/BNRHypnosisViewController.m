//
//  BNRHypnosisViewController.m
//  HypnoNerd
//
//  Created by Omer Wazir on 8/13/14.
//  Copyright (c) 2014 Omer Wazir. All rights reserved.
//

#import "BNRHypnosisViewController.h"
#import "BNRHypnosisView.h"

@interface BNRHypnosisViewController()

@property (nonatomic) BNRHypnosisView *backgroundView;

@end

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

-(void) colorControlAction:(UISegmentedControl *)segment{
    
    if(segment.selectedSegmentIndex == 0){
        [self.backgroundView changeCircleColor:[UIColor redColor]];
    }
    
    if(segment.selectedSegmentIndex == 1){
        [self.backgroundView changeCircleColor:[UIColor greenColor]];
    }
    
    if(segment.selectedSegmentIndex == 2){
        [self.backgroundView changeCircleColor:[UIColor blueColor]];
    }
    
}

-(void)loadView{
    //create a view
    CGRect frame = [UIScreen mainScreen].bounds;
    self.backgroundView = [[BNRHypnosisView alloc] initWithFrame:frame];
    UISegmentedControl *colorSegmentedControl = [[UISegmentedControl alloc]
                                                 initWithItems:@[@"Red",@"Green",@"Blue"]];
//    
    //how do I lay this out so it's correctly sized and positioned without me guessing coordinates?
    colorSegmentedControl.frame = CGRectMake(frame.origin.x + 10,
                                             frame.origin.y + 30,
                                             frame.size.width -20,
                                             45);
    colorSegmentedControl.backgroundColor = [UIColor grayColor];
    [colorSegmentedControl addTarget:self
                              action:@selector(colorControlAction:)
                    forControlEvents:UIControlEventValueChanged];
    //add a UISegmentedControl somewhere here…
    
    //set backgroundView as “the” view of the view controller
    [self.backgroundView addSubview:colorSegmentedControl];
    self.view = self.backgroundView;
}

@end
