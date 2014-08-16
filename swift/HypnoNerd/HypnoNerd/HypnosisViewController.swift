//
//  HypnosisViewController.swift
//  HypnoNerd
//
//  Created by Omer Wazir on 8/16/14.
//  Copyright (c) 2014 Omer Wazir. All rights reserved.
//

import UIKit

class HypnosisViewController: UIViewController {
    
    
    override func loadView() {
        //create a view
        let frame:CGRect = UIScreen.mainScreen().bounds;
        let backgroundView:HypnosisView = HypnosisView(frame: frame);
        
        //set backgroundView as the view of the view controller
        self.view = backgroundView;
    }
   
}
