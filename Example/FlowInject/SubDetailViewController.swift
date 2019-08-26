//
//  SubDetailViewController.swift
//  FlowInject_Example
//
//  Created by Seungjin on 26/08/2019.
//  Copyright © 2019 CocoaPods. All rights reserved.
//

import UIKit

class SubDetailViewController: UIViewController {
  
  let didTapMoveRoot: UIButton = {
    let button = UIButton()
    button.setTitle("Pop Root", for: .normal)
    button.setTitleColor(.white, for: .normal)
    button.backgroundColor = UIColor.darkGray
    button.layer.cornerRadius = 5
    return button
  }()
  
  let didTapMoveDetail: UIButton = {
    let button = UIButton()
    button.setTitle("Pop Detail", for: .normal)
    button.setTitleColor(.white, for: .normal)
    button.backgroundColor = .black
    return button
  }()
  
  var subDetailNavigator: SubDetailNavigator
  
  init(subDetailNavigator: SubDetailNavigator) {
    self.subDetailNavigator = subDetailNavigator
    super.init(nibName: nil, bundle: nil)
  }
  
  required init?(coder aDecoder: NSCoder) {
    fatalError("init(coder:) has not been implemented")
  }
  
  override func viewDidLoad() {
    super.viewDidLoad()
    
    self.title = "SubDetail"
    
    view.backgroundColor = .blue
    
    view.addSubview(didTapMoveRoot)
    view.addSubview(didTapMoveDetail)
    didTapMoveRoot.translatesAutoresizingMaskIntoConstraints = false
    didTapMoveDetail.translatesAutoresizingMaskIntoConstraints = false
    NSLayoutConstraint.activate([
      didTapMoveRoot.centerXAnchor.constraint(equalTo: view.centerXAnchor),
      didTapMoveRoot.centerYAnchor.constraint(equalTo: view.centerYAnchor),
      didTapMoveRoot.widthAnchor.constraint(equalToConstant: 200),
      
      didTapMoveDetail.centerXAnchor.constraint(equalTo: view.centerXAnchor),
      didTapMoveDetail.centerYAnchor.constraint(equalTo: view.centerYAnchor, constant: 50),
      didTapMoveDetail.widthAnchor.constraint(equalToConstant: 200),
      
      ])
    
    didTapMoveRoot.addTarget(self, action: #selector(moveRoot), for: .touchUpInside)
    didTapMoveDetail.addTarget(self, action: #selector(moveDetail), for: .touchUpInside)
  }
  
  @objc func moveRoot() {
    self.subDetailNavigator.navigate(to: .main)
  }
  
  @objc func moveDetail() {
    self.subDetailNavigator.navigate(to: .detail)
  }
  
}
