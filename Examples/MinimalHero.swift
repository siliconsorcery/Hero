//
//  PilotHero.swift
//  Hero (iOS)
//
//  Created by John Cumming on 10/17/19.
//  Copyright © 2019 Luke Zhao. All rights reserved.
//

import UIKit
import Hero

class MinimalHero: BackViewController {
  
  override func viewDidLoad() {
    super.viewDidLoad()
    view.backgroundColor = .blue
  }

  @objc override func onTap() {
    
    let pilotOther = PilotOther()
    pilotOther.hero.isEnabled = true
    pilotOther.hero.modalAnimationType = .autoReverse(
      presenting: .pageIn(direction: .left)
    )
    
    present(pilotOther, animated: true, completion: nil)
  }
}

class PilotOther: BackViewController {

  override func viewDidLoad() {
    super.viewDidLoad()
    view.backgroundColor = .green
  }
}



//    pilotGreen.hero.modalAnimationType = .selectBy(
//      presenting: .pull(direction: .left),
//      dismissing: .slide(direction: .down)
//    )

//    pilotGreen.hero.modalAnimationType = .zoom

//    pilotGreen.hero.modalAnimationType = .pageIn(direction: .left)

//    pilotGreen.hero.modalAnimationType = .pull(direction: .left)
