//
//  AppDelegate.swift
//  CustomWindow
//
//  Created by Md. Kamrul Hasan on 21/5/20.
//  Copyright © 2020 MKHG Lab. All rights reserved.
//

import UIKit

@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate {

    var window: UIWindow?

    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {
        
        window = UIWindow(frame: UIScreen.main.bounds)
        
        let storyboard = UIStoryboard(name: "Main", bundle: nil)
        let viewController = storyboard.instantiateViewController(withIdentifier: "ViewController") as! ViewController
        
        let navContoller = UINavigationController(rootViewController: viewController)
        
        window?.rootViewController = navContoller
        window?.makeKeyAndVisible()
        
        return true
    }

}

