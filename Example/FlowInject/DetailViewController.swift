//
//  DetailViewController.swift
//  FlowInject_Example
//
//  Created by Seungjin on 26/08/2019.
//  Copyright © 2019 CocoaPods. All rights reserved.
//

import UIKit

class DetailViewController: UIViewController {
  
  let didTapMoveSubDetail: UIButton = {
    let button = UIButton()
    button.setTitle("Move SubDetail", for: .normal)
    button.setTitleColor(.white, for: .normal)
    button.backgroundColor = UIColor.darkGray
    button.layer.cornerRadius = 5
    return button
  }()
  
  let passedContents: UILabel = {
    let label = UILabel()
    label.textColor = .black
    return label
  }()
  
  var contentText: String
  var detailNavigator: DetailNavigator
  
  init(contentText: String,
       detailNavigator: DetailNavigator) {
    self.contentText = contentText
    self.detailNavigator = detailNavigator
    super.init(nibName: nil, bundle: nil)
  }
  
  required init?(coder aDecoder: NSCoder) {
    fatalError("init(coder:) has not been implemented")
  }
  
  override func viewDidLoad() {
    super.viewDidLoad()
    
    self.title = "Detail"
    
    view.backgroundColor = .yellow
    
    view.addSubview(didTapMoveSubDetail)
    view.addSubview(passedContents)
    
    didTapMoveSubDetail.translatesAutoresizingMaskIntoConstraints = false
    passedContents.translatesAutoresizingMaskIntoConstraints = false
    NSLayoutConstraint.activate([
      didTapMoveSubDetail.centerXAnchor.constraint(equalTo: view.centerXAnchor),
      didTapMoveSubDetail.centerYAnchor.constraint(equalTo: view.centerYAnchor),
      didTapMoveSubDetail.widthAnchor.constraint(equalToConstant: 200),
      
      passedContents.centerXAnchor.constraint(equalTo: view.centerXAnchor),
      passedContents.centerYAnchor.constraint(equalTo: view.centerYAnchor, constant: -50)
      
      ])
    
    didTapMoveSubDetail.addTarget(self, action: #selector(move), for: .touchUpInside)
    
    
    //Passed contents value
    passedContents.text = contentText
  }
  
  @objc func move() {
    self.detailNavigator.navigate(to: .subDetail)
  }
}
