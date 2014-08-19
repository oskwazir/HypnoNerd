//
//  AppDelegate.swift
//  HypnoNerd
//
//  Created by Omer Wazir on 8/15/14.
//  Copyright (c) 2014 Omer Wazir. All rights reserved.
//

import UIKit

@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate {
                            
    var window: UIWindow?


    func application(application: UIApplication!, didFinishLaunchingWithOptions launchOptions: NSDictionary!) -> Bool {
        // Override point for customization after application launch.
        self.window = UIWindow(frame: UIScreen.mainScreen().bounds);
        
        let hypnosisViewController = HypnosisViewController();
        
        //this will be a reference to an object that represents the app bundle
        let appBundle:NSBundle = NSBundle.mainBundle();
        
        //look in appBundle for a file called ReminderViewController.xib
        
        //the book says for obj-c view controller intialization that init(nibName nibNameOrNil: String!, bundle)will get called
        //by just calling init(). Not the case in Swift. In HypnosisViewController I created a convenience init that calls
        // init(nibName nibNameOrNil: String!, bundle)
        let reminderViewController:ReminderViewController = ReminderViewController();
        
        let tabBarController:UITabBarController = UITabBarController();
        
        tabBarController.viewControllers = [hypnosisViewController,reminderViewController];
        
        
        self.window!.rootViewController = tabBarController;
        
        self.window!.backgroundColor = UIColor.whiteColor();
        
        application.registerUserNotificationSettings(UIUserNotificationSettings(forTypes: UIUserNotificationType.Sound | UIUserNotificationType.Alert |
            UIUserNotificationType.Badge, categories: nil
            ))
        return true
    }

    func applicationWillResignActive(application: UIApplication!) {
        // Sent when the application is about to move from active to inactive state. This can occur for certain types of temporary interruptions (such as an incoming phone call or SMS message) or when the user quits the application and it begins the transition to the background state.
        // Use this method to pause ongoing tasks, disable timers, and throttle down OpenGL ES frame rates. Games should use this method to pause the game.
    }

    func applicationDidEnterBackground(application: UIApplication!) {
        // Use this method to release shared resources, save user data, invalidate timers, and store enough application state information to restore your application to its current state in case it is terminated later.
        // If your application supports background execution, this method is called instead of applicationWillTerminate: when the user quits.
    }

    func applicationWillEnterForeground(application: UIApplication!) {
        // Called as part of the transition from the background to the inactive state; here you can undo many of the changes made on entering the background.
    }

    func applicationDidBecomeActive(application: UIApplication!) {
        // Restart any tasks that were paused (or not yet started) while the application was inactive. If the application was previously in the background, optionally refresh the user interface.
    }

    func applicationWillTerminate(application: UIApplication!) {
        // Called when the application is about to terminate. Save data if appropriate. See also applicationDidEnterBackground:.
    }


}

