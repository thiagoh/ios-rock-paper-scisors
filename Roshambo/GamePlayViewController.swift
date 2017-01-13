//
//  GamePlayViewController.swift
//  Roshambo
//
//  Created by Thiago Andrade on 2017-01-12.
//  Copyright © 2017 Thiago Andrade. All rights reserved.
//

import UIKit

class GamePlayViewController: UIViewController {

  public var text: String!
  public var initialText: String!

  init?(coder aDecoder: NSCoder, initialText text: String) {
    super.init(coder: aDecoder);
    self.initialText = text;
  }

  required init?(coder aDecoder: NSCoder) {
    super.init(coder: aDecoder);
  }

  override func viewDidLoad() {
    super.viewDidLoad()

    let label = self.view.viewWithTag(10) as! UILabel;
    label.text = initialText + " " + text;
  }
}
