//
//  ViewController.swift
//  Dz7(3,2)
//
//  Created by Elijah Malashko on 21.03.21.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
    }
    @IBAction func onPlayButton(_ sender: Any) {
        let destinationViewController = SecondViewController()
        present(destinationViewController, animated: true, completion: nil)
    }
    

}

