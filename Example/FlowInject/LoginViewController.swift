//
//  LoginViewController.swift
//  FlowInject_Example
//
//  Created by Seungjin on 26/08/2019.
//  Copyright © 2019 CocoaPods. All rights reserved.
//

import UIKit

class LoginViewController: UIViewController {
  
  
  let didTapMoveMain: UIButton = {
    let button = UIButton()
    button.setTitle("Move Main", for: .normal)
    button.setTitleColor(.white, for: .normal)
    button.backgroundColor = UIColor.darkGray
    button.layer.cornerRadius = 5
    return button
  }()
  
  var loginNavigator: LoginNavigator
  
  init(loginNavigator: LoginNavigator) {
    self.loginNavigator = loginNavigator
    super.init(nibName: nil, bundle: nil)
  }
  
  
  override func viewDidLoad() {
    super.viewDidLoad()
    
    self.title = "Login"
    
    view.addSubview(didTapMoveMain)
    
    didTapMoveMain.translatesAutoresizingMaskIntoConstraints = false
    NSLayoutConstraint.activate([
      didTapMoveMain.centerXAnchor.constraint(equalTo: view.centerXAnchor),
      didTapMoveMain.centerYAnchor.constraint(equalTo: view.centerYAnchor),
      didTapMoveMain.widthAnchor.constraint(equalToConstant: 200)
      ])
    
    didTapMoveMain.addTarget(self, action: #selector(move), for: .touchUpInside)
  }
  
  
  required init?(coder aDecoder: NSCoder) {
    fatalError("init(coder:) has not been implemented")
  }
  
  
  @objc func move() {
    loginNavigator.navigate(to: .main)
  }
  
}

