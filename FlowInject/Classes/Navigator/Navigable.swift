//
//  Navigable.swift
//  FlowInject
//
//  Created by Seungjin on 26/08/2019.
//  Copyright © 2019 Jinnify. All rights reserved.
//

import UIKit

/// 'Navigable' begins the flow of apps by abstracting the manipulation of 'Navigator' and delegating it to the appropriate format.
public protocol Navigable {
  
  /// Route Type
  associatedtype Destination
  
  /// 'Presenter' required for screen movement
  var presenter: UINavigationController? { get }
  
  /// Navigate to different view controllers according to Route Type
  func navigate(to destination: Destination)
  
}

extension Navigable {
  
  public func navigate(to destination: Destination) {}
  
}
