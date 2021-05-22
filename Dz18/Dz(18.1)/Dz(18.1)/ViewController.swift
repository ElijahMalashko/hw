//
//  ViewController.swift
//  Dz(18.1)
//
//  Created by Elijah Malashko on 12.05.21.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        let customView = Bundle.main.loadNibNamed("CustomView", owner: self, options: nil)?.first as! UIView
        view.addSubview(customView)
    }
}

