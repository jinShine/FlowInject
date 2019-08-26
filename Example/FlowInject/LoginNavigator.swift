//
//  LoginNavigator.swift
//  FlowInject_Example
//
//  Created by Seungjin on 26/08/2019.
//  Copyright © 2019 CocoaPods. All rights reserved.
//

import UIKit
import FlowInject

enum LoginRoute: Route {
  case main
}

class LoginNavigator: Navigator<LoginRoute> {
  
  override init(with presenter: UINavigationController?) {
    super.init()
    self.presenter = presenter
  }
  
  func navigate(to destination: LoginRoute) {
    switch destination {
    case .main:
      let viewController = MainViewController(mainNavigator: MainNavigator(with: presenter))
      presenter?.pushViewController(viewController, animated: true)
    }
  }
}
