//
//  AppDelegate.swift
//  AppA
//
//  Created by Bruno da Luz on 5/9/16.
//  Copyright © 2016 Bruno da Luz. All rights reserved.
//

import UIKit

@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate {

    var window: UIWindow?

    func application(application: UIApplication, didFinishLaunchingWithOptions launchOptions: [NSObject: AnyObject]?) -> Bool {
        return true
    }

    func application(app: UIApplication, openURL url: NSURL, options: [String : AnyObject]) -> Bool {
        print("calling application bundle id: \(app)")
        print("url scheme: \([url .scheme])")
        print("url query : \([url .query])")
        return true
    }

    func applicationDidReceiveMemoryWarning(application: UIApplication) {}

    func applicationWillResignActive(application: UIApplication) {}

    func applicationDidEnterBackground(application: UIApplication) {}

    func applicationWillEnterForeground(application: UIApplication) {}

    func applicationDidBecomeActive(application: UIApplication) {}

    func applicationWillTerminate(application: UIApplication) {}

    func application(application: UIApplication, openURL url: NSURL, sourceApplication: String?, annotation: AnyObject) -> Bool {

        print("URL SCHEME: \(url.scheme)")

        return true
    }
}
