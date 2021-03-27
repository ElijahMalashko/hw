//
//  ViewController.swift
//  Dz8(1)
//
//  Created by Elijah Malashko on 26.03.21.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
    }
    @IBAction func onPlayButton(_ sender: Any) {
        let storyboard = UIStoryboard(name: "SecondViewController", bundle: Bundle.main)
        let destinationViewController = storyboard.instantiateInitialViewController()!
        navigationController?.pushViewController(destinationViewController, animated: true)
    }
    

}

