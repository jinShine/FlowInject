//
//  AppNavigator.swift
//  FlowInject_Example
//
//  Created by Seungjin on 26/08/2019.
//  Copyright © 2019 CocoaPods. All rights reserved.
//

import UIKit
import FlowInject

enum InitRoute: Route {
  case login
  case main
}

/// Base AppNavigator
class AppNavigator: Navigator<InitRoute> {
  
  func navigate(to destination: InitRoute) {
    switch destination {
    case .login:
      let viewController = LoginViewController(loginNavigator: LoginNavigator(with: presenter))
      self.presenter?.present(viewController, animated: true, completion: nil)
    case .main:
      let viewController = MainViewController(mainNavigator: MainNavigator(with: presenter))
      self.presenter?.pushViewController(viewController, animated: true)
    }
  }
  
}
