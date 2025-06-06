//
//  AppDelegate.swift
//  NetflixClone
//
//  Created by 허성필 on 5/9/25.
//

import UIKit

@main
class AppDelegate: UIResponder, UIApplicationDelegate {

    var window: UIWindow?

    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {
        
        let window = UIWindow(frame: UIScreen.main.bounds)
        
        window.rootViewController = UINavigationController(rootViewController: MainViewController())
        
        window.makeKeyAndVisible()
        
        self.window = window
        
        return true
    }
    

}

