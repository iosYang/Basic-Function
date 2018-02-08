//
//  AppDelegate.swift
//  BasicFunction
//
//  Created by Cns on 2017/12/22.
//  Copyright © 2017年 YQ. All rights reserved.
//

import UIKit

@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate {

    var window: UIWindow?

    var mainSBoard:UIStoryboard?

    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplicationLaunchOptionsKey: Any]?) -> Bool {
        // Override point for customization after application launch.
        
        mainSBoard = UIStoryboard(name: "Main", bundle: nil)
        
        NotificationCenter.default.addObserver(self, selector: #selector(AppDelegate.showTestVC) , name: NSNotification.Name(rawValue: "test"), object: nil)
        
        return true
    }
    
    
    @objc func showTestVC(){

        print("根控制器:\(self.window?.rootViewController)")
        
//        MainTab * maintab = (MainTab *) self.window.rootViewController;
        let mainTab = self.window?.rootViewController as! MainTab
        let naviVC = mainTab.selectedViewController as! UINavigationController
        
        let customVC = mainSBoard?.instantiateViewController(withIdentifier: "TestVC")
        customVC?.hidesBottomBarWhenPushed = true
        naviVC.pushViewController(customVC!, animated: true)
    }

    func applicationWillResignActive(_ application: UIApplication) {
        // Sent when the application is about to move from active to inactive state. This can occur for certain types of temporary interruptions (such as an incoming phone call or SMS message) or when the user quits the application and it begins the transition to the background state.
        // Use this method to pause ongoing tasks, disable timers, and invalidate graphics rendering callbacks. Games should use this method to pause the game.
    }

    func applicationDidEnterBackground(_ application: UIApplication) {
        // Use this method to release shared resources, save user data, invalidate timers, and store enough application state information to restore your application to its current state in case it is terminated later.
        // If your application supports background execution, this method is called instead of applicationWillTerminate: when the user quits.
    }

    func applicationWillEnterForeground(_ application: UIApplication) {
        // Called as part of the transition from the background to the active state; here you can undo many of the changes made on entering the background.
    }

    func applicationDidBecomeActive(_ application: UIApplication) {
        // Restart any tasks that were paused (or not yet started) while the application was inactive. If the application was previously in the background, optionally refresh the user interface.
    }

    func applicationWillTerminate(_ application: UIApplication) {
        // Called when the application is about to terminate. Save data if appropriate. See also applicationDidEnterBackground:.
    }


}

