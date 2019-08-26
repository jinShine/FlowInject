//
//  Navigator.swift
//  FlowInject
//
//  Created by Seungjin on 26/08/2019.
//  Copyright © 2019 Jinnify. All rights reserved.
//

import UIKit

///
/// A base class of Navigator complying with 'Navigable'
///
/// This class should kick off Navigator Using the Generic of Route Type from the 'AppDelegate'
///
open class Navigator<RouteType: Route>: Navigable {
  
  public typealias Destination = RouteType
  
  // MARK: - Stored properties
  
  public var window: UIWindow?
  public var presenter: UINavigationController?
  
  // MARK: - Initialization
  
  public init() {
    self.window = nil
    self.presenter = nil
  }
  
  public init(in window: UIWindow) {
    self.window = window
    self.presenter = UINavigationController()
    window.rootViewController = presenter
    window.backgroundColor = .white
    window.makeKeyAndVisible()
  }
  
  public init(in window: UIWindow? = nil,
              with presenter: UINavigationController = .init()) {
    self.window = window
    self.presenter = presenter
    window?.rootViewController = presenter
    window?.backgroundColor = .white
    window?.makeKeyAndVisible()
  }
  
  public init(with presenter: UINavigationController?) {
    self.window = nil
    self.presenter = presenter
  }
  
}



