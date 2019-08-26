//
//  MainViewController.swift
//  FlowInject_Example
//
//  Created by Seungjin on 26/08/2019.
//  Copyright © 2019 CocoaPods. All rights reserved.
//

import UIKit

class MainViewController: UIViewController {
  
  let passValueField: UITextField = {
    let textField = UITextField()
    textField.placeholder = "value to pass on"
    textField.borderStyle = UITextField.BorderStyle.roundedRect
    return textField
  }()
  
  let didTapMoveDetail: UIButton = {
    let button = UIButton()
    button.setTitle("Move Detail", for: .normal)
    button.setTitleColor(.white, for: .normal)
    button.backgroundColor = UIColor.darkGray
    button.layer.cornerRadius = 5
    return button
  }()
  
  let mainNavigator: MainNavigator
  
  init(mainNavigator: MainNavigator) {
    self.mainNavigator = mainNavigator
    super.init(nibName: nil, bundle: nil)
  }
  
  required init?(coder aDecoder: NSCoder) {
    fatalError("init(coder:) has not been implemented")
  }
  
  override func viewDidLoad() {
    super.viewDidLoad()
    
    self.title = "Main"
    
    view.backgroundColor = .green
    
    view.addSubview(didTapMoveDetail)
    view.addSubview(passValueField)
    didTapMoveDetail.translatesAutoresizingMaskIntoConstraints = false
    passValueField.translatesAutoresizingMaskIntoConstraints = false
    NSLayoutConstraint.activate([
      didTapMoveDetail.centerXAnchor.constraint(equalTo: view.centerXAnchor),
      didTapMoveDetail.centerYAnchor.constraint(equalTo: view.centerYAnchor),
      didTapMoveDetail.widthAnchor.constraint(equalToConstant: 200),
      
      passValueField.centerXAnchor.constraint(equalTo: view.centerXAnchor),
      passValueField.centerYAnchor.constraint(equalTo: view.centerYAnchor, constant: -50),
      passValueField.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 50),
      passValueField.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -50)
      ])
    
    didTapMoveDetail.addTarget(self, action: #selector(move), for: .touchUpInside)
  }
  
  
  @objc func move() {
    self.mainNavigator.navigate(to: .detail(content: passValueField.text ?? ""))
  }
  
}
