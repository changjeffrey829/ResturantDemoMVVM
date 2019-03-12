//
//  AppDelegate.swift
//  Resturant
//
//  Created by Jeffrey Chang on 11/21/18.
//  Copyright © 2018 Jeffrey Chang. All rights reserved.
//

import UIKit

@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate {

    var window: UIWindow?
    var coordinator: MainCoordinator?

    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {
        
        let navController = UINavigationController()
        
        coordinator = MainCoordinator(navigationController: navController)
        coordinator?.start()
        
        window = UIWindow()
        window?.makeKeyAndVisible()
        window?.rootViewController = navController
        return true
    }
}
