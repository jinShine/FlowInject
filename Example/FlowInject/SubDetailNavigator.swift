//
//  SubDetailNavigator.swift
//  FlowInject_Example
//
//  Created by Seungjin on 26/08/2019.
//  Copyright © 2019 CocoaPods. All rights reserved.
//

import UIKit
import FlowInject

enum SubDetailRoute: Route {
  case main
  case detail
}

class SubDetailNavigator: Navigator<SubDetailRoute> {
  
  override init(with presenter: UINavigationController?) {
    super.init()
    self.presenter = presenter
  }
  
  func navigate(to destination: SubDetailRoute) {
    switch destination {
    case .main:
      presenter?.popToRootViewController(animated: true)
    case .detail:
      presenter?.popViewController(animated: true)
    }
  }
}
