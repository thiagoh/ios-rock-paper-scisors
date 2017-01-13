//
//  RootViewController.swift
//  Roshambo
//
//  Created by Thiago Andrade on 2017-01-12.
//  Copyright © 2017 Thiago Andrade. All rights reserved.
//

import UIKit

class RootViewController: UIViewController {

  override func viewDidLoad() {
    super.viewDidLoad()
    // Do any additional setup after loading the view.
  }

  private func setText(_ controller: GamePlayViewController) {

    let randValue = arc4random() % 2;
    controller.text = randValue >= 1 ? "Win" : "Lose";
  }

  @IBAction func chooseRock(_ sender: Any) {

    var controller: RockWinsViewController;

    controller = self.storyboard?.instantiateViewController(withIdentifier: "paperWinsStoryboardId") as! RockWinsViewController;
    setText(controller);

    self.navigationController?.pushViewController(controller, animated: true);
  }

  @IBAction func chosePaper(_ sender: Any) {

    performSegue(withIdentifier: "paperSegue", sender: self);
  }

  override func prepare(for segue: UIStoryboardSegue, sender: Any?) {

    if (segue.identifier == "paperSegue") {

      let controller = segue.destination as! PaperWinsViewController;
      setText(controller);

    } else if (segue.identifier == "scisorsSegue") {

      let controller = segue.destination as! ScisorsWinsViewController;
      setText(controller);
    }
  }
}
