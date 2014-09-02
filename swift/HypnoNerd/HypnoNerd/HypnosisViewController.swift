//
//  HypnosisViewController.swift
//  HypnoNerd
//
//  Created by Omer Wazir on 8/16/14.
//  Copyright (c) 2014 Omer Wazir. All rights reserved.
//

import UIKit

class HypnosisViewController: UIViewController,UITextFieldDelegate {
    
    required init(coder: NSCoder) {
        fatalError("NSCoding not supported")
    }
    
    override convenience init(){
        self.init(nibName: nil,bundle: nil)
    }
    
    override init(nibName nibNameOrNil: String!, bundle nibBundleOrNil: NSBundle!) {
        super.init(nibName: nibNameOrNil, bundle: nibBundleOrNil)
        self.tabBarItem.title = "Hypnotize";
        self.tabBarItem.image = UIImage(named: "hypnosis.png");
    }
    
    func textFieldShouldReturn(textField: UITextField!) -> Bool {
        self.drawHypnoticMessage(textField.text);
        
        textField.text = "";
        textField.resignFirstResponder();
        
        return true;
    }
    
    
    func drawHypnoticMessage(message: String){
        for _ in 1...20{
            let messageLabel:UILabel = UILabel();
            
            //configure the label’s color and text
            messageLabel.text = message;
            messageLabel.backgroundColor = UIColor.clearColor();
            messageLabel.textColor = UIColor.blackColor();
            
            //this method will resize the messageLabel to fit the size of the message
            messageLabel.sizeToFit();
            
            //Get a random x value that fits in the hypnosis view width
            let width = self.view.bounds.size.width - messageLabel.bounds.size.width;
            let x = CGFloat(arc4random()) % width;
            
            let height = self.view.bounds.size.height  - messageLabel.bounds.size.height;
            let y = CGFloat(arc4random()) % height;
            
            //Update the label’s frame
            var frame:CGRect = messageLabel.frame;
            frame.origin = CGPointMake(x, y);
            messageLabel.frame = frame;
            
            //Add the label to the view hierarchy
            self.view.addSubview(messageLabel);
            
            let motionEffect:UIInterpolatingMotionEffect = UIInterpolatingMotionEffect(keyPath: "center.x", type: UIInterpolatingMotionEffectType.TiltAlongHorizontalAxis);
            
            motionEffect.minimumRelativeValue = -25;
            motionEffect.maximumRelativeValue = 25;
            
            messageLabel.addMotionEffect(motionEffect);
            
            
            
        }
    }
    
    
    override func loadView() {
        //create a view
        let frame:CGRect = UIScreen.mainScreen().bounds;
        let backgroundView:HypnosisView = HypnosisView(frame: frame);
        
        let textFieldRect:CGRect = CGRectMake(
            frame.origin.x + 10,
            frame.origin.y + 30,
            frame.size.width - 20,
            30);
        let textField:UITextField = UITextField(frame:textFieldRect);
        
        //Setting the border style on the text field will allow us to see it more easily
        textField.borderStyle = UITextBorderStyle.RoundedRect;
        textField.placeholder = "Hypnotize Me";
        textField.textAlignment = NSTextAlignment.Center;
        textField.returnKeyType = UIReturnKeyType.Done;
        
        //In objective-c you could when implementing a protocol method without
        //declaring that the class implements the protocol. Swift won't compile right now.
        textField.delegate = self;
        
        backgroundView.addSubview(textField);
        
        
        //set backgroundView as the view of the view controller
        self.view = backgroundView;
    }
   
}
