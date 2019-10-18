//
//  ExampleBaseViewController.swift
//  HeroExamples
//
//  Created by Luke Zhao on 2018-04-15.
//  Copyright © 2018 Luke Zhao. All rights reserved.
//

import UIKit

class ExampleBaseViewController: UIViewController {
  
  let dismissButton = UIButton(type: .system)

  // iOS 13 addedd new 'default' behaviour for modal view controller when being presented.
  // https://stackoverflow.com/questions/56435510/presenting-modal-in-ios-13-fullscreen
  // Put it back to the ols default '.fullScreen'
  override init(nibName nibNameOrNil: String?, bundle nibBundleOrNil: Bundle?) {
    super.init(nibName: nibNameOrNil, bundle: nibBundleOrNil)
    modalPresentationStyle = .fullScreen
  }
  
  required init?(coder: NSCoder) {
    fatalError("init(coder:) has not been implemented")
  }
  
  override func viewDidLoad() {
    
    super.viewDidLoad()
    view.backgroundColor = .white
    
    view.addGestureRecognizer(UITapGestureRecognizer(target: self, action: #selector(onTap)))

    dismissButton.setTitle("back", for: .normal)
    dismissButton.addTarget(self, action: #selector(back), for: .touchUpInside)
    dismissButton.hero.id = "dismissButton"
    view.addSubview(dismissButton)
  }

  override func viewDidLayoutSubviews() {
    super.viewDidLayoutSubviews()
    dismissButton.sizeToFit()
    dismissButton.center = CGPoint(x: 50, y: 30)
  }

  @objc func back() {
    dismiss(animated: true, completion: nil)
  }

  @objc func onTap() {
    back()
  }
}

class BackViewController: UIViewController {

  let dismissButton = UIButton(type: .system)
  
  // iOS 13 addedd new 'default' behaviour for modal view controller when being presented.
  // https://stackoverflow.com/questions/56435510/presenting-modal-in-ios-13-fullscreen
  // Put it back to the ols default '.fullScreen'
  override init(nibName nibNameOrNil: String?, bundle nibBundleOrNil: Bundle?) {
    super.init(nibName: nibNameOrNil, bundle: nibBundleOrNil)
    modalPresentationStyle = .fullScreen
  }
  
  required init?(coder: NSCoder) {
    fatalError("init(coder:) has not been implemented")
  }
  
  override func viewDidLoad() {
    super.viewDidLoad()
    
    view.addGestureRecognizer(UITapGestureRecognizer(target: self, action: #selector(onTap)))
    
    dismissButton.setTitle("back", for: .normal)
    dismissButton.addTarget(self, action: #selector(back), for: .touchUpInside)
    dismissButton.hero.id = "dismissButton"
    view.addSubview(dismissButton)
  }
  
  override func viewDidLayoutSubviews() {
    super.viewDidLayoutSubviews()
    dismissButton.sizeToFit()
    dismissButton.center = CGPoint(x: 50, y: 30)
  }
  
  @objc func back() {
    dismiss(animated: true, completion: nil)
  }

  @objc func onTap() {
    back()
  }
  
}
