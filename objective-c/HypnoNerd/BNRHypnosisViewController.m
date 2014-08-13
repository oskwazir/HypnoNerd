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

-(void)loadView{
    //create a view
    CGRect frame = [UIScreen mainScreen].bounds;
    BNRHypnosisView *backgroundView = [[BNRHypnosisView alloc] initWithFrame:frame];
    
    //set backgroundView as “the” view of the view controller
    self.view = backgroundView;
}

@end
