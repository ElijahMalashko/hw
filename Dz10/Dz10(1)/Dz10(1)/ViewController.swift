//
//  ViewController.swift
//  Dz10(1)
//
//  Created by Elijah Malashko on 9.04.21.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var imageView: UIImageView!

    override func viewDidLoad() {
        super.viewDidLoad()
        UIView.animate(withDuration: 2.0) {
            UIView.animate(withDuration: 4.0, delay: 0.0, options: [.repeat, .autoreverse]) {
                self.imageView.frame = CGRect(x: 185, y: 49, width: 61, height: 59)
    }   completion: { _ in
            }
        }}
}
