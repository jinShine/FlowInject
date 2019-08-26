//
//  MainNavigator.swift
//  FlowInject_Example
//
//  Created by Seungjin on 26/08/2019.
//  Copyright © 2019 CocoaPods. All rights reserved.
//

import UIKit
import FlowInject

enum MainRoute: Route {
  case detail(content: String)
}

class MainNavigator: Navigator<MainRoute> {
  
  override init(with presenter: UINavigationController?) {
    super.init()
    self.presenter = presenter
  }
  
  func navigate(to destination: MainRoute) {
    switch destination {
    case .detail(let content):
      let viewController = DetailViewController(contentText: content,
                                                detailNavigator:DetailNavigator(with: presenter))
      presenter?.pushViewController(viewController, animated: true)
    }
  }
  
}
