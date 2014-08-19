//
//  HypnosisViewController.swift
//  HypnoNerd
//
//  Created by Omer Wazir on 8/16/14.
//  Copyright (c) 2014 Omer Wazir. All rights reserved.
//

import UIKit

class HypnosisViewController: UIViewController {
    
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
    
    override func loadView() {
        //create a view
        let frame:CGRect = UIScreen.mainScreen().bounds;
        let backgroundView:HypnosisView = HypnosisView(frame: frame);
        
        //set backgroundView as the view of the view controller
        self.view = backgroundView;
    }
   
}
