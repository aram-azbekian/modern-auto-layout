//
//  AppDelegate.swift
//  Challenge-2-2
//
//  Created by aram.azbekyan on 17.04.2023.
//

import UIKit

@main
class AppDelegate: UIResponder, UIApplicationDelegate {
	
	var window: UIWindow?

	func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {
		
		window = UIWindow()
		window?.backgroundColor = .white
		window?.rootViewController = ViewController()
		window?.makeKeyAndVisible()
		
		return true
	}

}

