//
//  ViewController.swift
//  dz11
//
//  Created by Elijah Malashko on 25.04.21.
//

import UIKit

class ViewController: UIViewController {
    private var isOnToggle = true

    @IBOutlet weak var mainView: UIView!

    override func viewDidLoad() {
        super.viewDidLoad()

    }

    @IBAction func menuButton(_ sender: Any) {
        mainView.frame = CGRect(x: isOnToggle ? 237 : 0, y: 0, width: 414 , height: 896)
        isOnToggle = !isOnToggle

        if isOnToggle {
            mainView.backgroundColor = .white
        } else{
            mainView.backgroundColor = .darkGray
        }
    }
}

