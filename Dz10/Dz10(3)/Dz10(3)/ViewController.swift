//
//  ViewController.swift
//  Dz10(3)
//
//  Created by Elijah Malashko on 9.04.21.
//

import UIKit

class ViewController: UIViewController {
    var imageOne = UIImage(named: "flag")
    var imageTwo = UIImage(named: "map")
    var imageThree = UIImage(named: "statue")
    @IBOutlet weak var imageView: UIImageView!
    override func viewDidLoad() {
        super.viewDidLoad()
        imageView.image = imageOne
    }
    @IBAction func onSwipe(_ sender: Any) {
        if imageView.image == imageOne{
            imageView.image = imageTwo
        }
        else if (imageView.image == imageTwo) {
            imageView.image = imageThree }
        else if (imageView.image == imageThree) {
            imageView.image = imageOne }
    }
}






