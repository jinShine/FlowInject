//
//  AppDelegate.swift
//  FlowInject
//
//  Created by seungjin on 08/26/2019.
//  Copyright (c) 2019 seungjin. All rights reserved.
//

import UIKit
import FlowInject

@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate {

    var window: UIWindow?


    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplicationLaunchOptionsKey: Any]?) -> Bool {
      
      self.window = UIWindow(frame: UIScreen.main.bounds)
      let appNavigator = AppNavigator(in: self.window)
      
      //Example Condition
      if true {
        appNavigator.navigate(to: .main)
      } else {
        appNavigator.navigate(to: .login)
      }
      
        return true
    }

}

