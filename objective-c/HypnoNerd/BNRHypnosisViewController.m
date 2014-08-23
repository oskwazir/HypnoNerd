//
//  BNRHypnosisViewController.m
//  HypnoNerd
//
//  Created by Omer Wazir on 8/13/14.
//  Copyright (c) 2014 Omer Wazir. All rights reserved.
//

#import "BNRHypnosisViewController.h"
#import "BNRHypnosisView.h"

@interface BNRHypnosisViewController() <UITextFieldDelegate>
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

-(BOOL)textFieldShouldReturn:(UITextField *)textField{
    [self drawHypnoticMessage:textField.text];
    
    //clear the text the user typed
    textField.text = @"";
    
    //dismiss the keyboard by calling resignFirstResponder
    [textField resignFirstResponder];
    return YES;
}

-(void)loadView{
    //create a view
    CGRect frame = [UIScreen mainScreen].bounds;
    
    BNRHypnosisView *backgroundView = [[BNRHypnosisView alloc] initWithFrame:frame];
    
    CGRect textFieldRect = CGRectMake(40, 70, 240, 30);
    UITextField *textField = [[UITextField alloc] initWithFrame:textFieldRect];
    
    //setting the border style on the text field will help us see it
    textField.borderStyle = UITextBorderStyleRoundedRect;
    [backgroundView addSubview:textField];
    
    textField.placeholder = @"Hypnotize me";
    textField.returnKeyType = UIReturnKeyDone;
    
    textField.delegate = self;
    
    //set backgroundView as “the” view of the view controller
    self.view = backgroundView;
}

-(void) drawHypnoticMessage:(NSString *)message{
    
    for (int i =0; i < 20; i++) {
        UILabel *messageLabel = [[UILabel alloc] init];
        
        //Configure the label’s color and text
        messageLabel.backgroundColor = [UIColor clearColor];
        messageLabel.textColor = [UIColor lightGrayColor];
        messageLabel.text = message;
        
        //This method resizes the label relative to the size of the message it is displaying
        [messageLabel sizeToFit];
        
        //Get a random x value that fits within the hypnosis view’s width
        int width = self.view.bounds.size.width - messageLabel.bounds.size.width;
        
        int x = arc4random() % width;
        
        //Get a random y value that fits within the hypnosis view’s height
        int height = self.view.bounds.size.height - messageLabel.bounds.size.height;
        int y = arc4random() % height;
        
        //Update the label’s frame
        CGRect frame = messageLabel.frame;
        frame.origin = CGPointMake(x, y);
        
        messageLabel.frame = frame;
        
        //Add the label to the hierarchy
        [self.view addSubview:messageLabel];
    }
}

@end
