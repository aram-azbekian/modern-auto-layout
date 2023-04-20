//
//  AppDelegate.swift
//  CodeLayout
//
//  Created by aram.azbekyan on 17.04.2023.
//

import UIKit

@main
class AppDelegate: UIResponder, UIApplicationDelegate {

	var window: UIWindow?

	func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {
		
		window = UIWindow(frame: UIScreen.main.bounds)
		window?.backgroundColor = .white
		window?.rootViewController = RootViewController()
		window?.makeKeyAndVisible()
		
		return true
	}


}

