//
//  AppDelegate.swift
//  SwiftSinaBlog0615
//
//  Created by LongMa on 16/6/15.
//  Copyright © 2016年 HT. All rights reserved.
//

import UIKit

@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate {
    
    var window: UIWindow?
    
    
    func application(application: UIApplication, didFinishLaunchingWithOptions launchOptions: [NSObject: AnyObject]?) -> Bool {
        //不能再window为空时在后面加 ?;  ?作用是在左边对象为空时不执行右边的代码。
        window = UIWindow(frame: UIScreen.mainScreen().bounds )
        window?.backgroundColor = UIColor.yellowColor()
        
        let tabbarC = UITabBarController()
        
        let homeVC = YLHomeViewController()
        homeVC.title = "主页"
        homeVC.tabBarItem.image = UIImage(named: "tabbar_home")
        homeVC.tabBarItem.selectedImage = UIImage(named: "tabbar_home_highlighted")
        tabbarC.addChildViewController(UINavigationController(rootViewController: homeVC))
        
        let msgVC = YLMessageViewController()
        msgVC.title = "信息"
        msgVC.tabBarItem.image = UIImage(named: "tabbar_message_center")
        msgVC.tabBarItem.selectedImage = UIImage(named: "tabbar_message_center_highlighted")
        tabbarC.addChildViewController(UINavigationController(rootViewController: msgVC))
        
        
        
        window?.rootViewController = tabbarC
        window?.makeKeyAndVisible()
        return true
    }
    
    func applicationWillResignActive(application: UIApplication) {
        // Sent when the application is about to move from active to inactive state. This can occur for certain types of temporary interruptions (such as an incoming phone call or SMS message) or when the user quits the application and it begins the transition to the background state.
        // Use this method to pause ongoing tasks, disable timers, and throttle down OpenGL ES frame rates. Games should use this method to pause the game.
    }
    
    func applicationDidEnterBackground(application: UIApplication) {
        // Use this method to release shared resources, save user data, invalidate timers, and store enough application state information to restore your application to its current state in case it is terminated later.
        // If your application supports background execution, this method is called instead of applicationWillTerminate: when the user quits.
    }
    
    func applicationWillEnterForeground(application: UIApplication) {
        // Called as part of the transition from the background to the inactive state; here you can undo many of the changes made on entering the background.
    }
    
    func applicationDidBecomeActive(application: UIApplication) {
        // Restart any tasks that were paused (or not yet started) while the application was inactive. If the application was previously in the background, optionally refresh the user interface.
    }
    
    func applicationWillTerminate(application: UIApplication) {
        // Called when the application is about to terminate. Save data if appropriate. See also applicationDidEnterBackground:.
    }
    
    
}

