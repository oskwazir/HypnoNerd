//
//  HypnosisViewController.swift
//  HypnoNerd
//
//  Created by Omer Wazir on 8/16/14.
//  Copyright (c) 2014 Omer Wazir. All rights reserved.
//

import UIKit

class HypnosisViewController: UIViewController {
    
    
    /***
    *** Couldn't get init(nibName nibNameOrNil: String!, bundle nibBundleOrNil: NSBundle!) 
    *** to compile so I just used vanilla init as seen in the file at:
    ***  https://github.com/davidkobilnyk/BNRGuideSolutionsInSwift/blob/9e335832468059d8f6dfc9222b2837c190c9d1b2/06-ViewControllers/HypnoNerd/HypnoNerd/BNRHypnosisViewController.swift
    ***/
    
    required init(coder: NSCoder) {
        fatalError("NSCoding not supported")
    }
    
   override init() {
        super.init(nibName: "HypnosisViewController", bundle: nil)
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
