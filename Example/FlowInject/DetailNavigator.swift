//
//  DetailNavigator.swift
//  FlowInject_Example
//
//  Created by Seungjin on 26/08/2019.
//  Copyright © 2019 CocoaPods. All rights reserved.
//

import UIKit
import FlowInject

enum DetailRoute: Route {
  case subDetail
}

class DetailNavigator: Navigator<DetailRoute> {
  
  override init(with presenter: UINavigationController?) {
    super.init()
    self.presenter = presenter
  }
  
  func navigate(to destination: DetailRoute) {
    switch destination {
    case .subDetail:
      let viewController = SubDetailViewController(subDetailNavigator: SubDetailNavigator(with: presenter))
      presenter?.pushViewController(viewController, animated: true)
    }
  }
}
