//
//  SecondViewController.swift
//  Dz8(1)
//
//  Created by Elijah Malashko on 26.03.21.
//

import UIKit

class SecondViewController: UIViewController {
    var xCord:Int = 0
    var yCord:Int = 0
    
    @IBOutlet weak var button: UIButton!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
    
    
}
    @IBAction func Pan(_ sender: UIPanGestureRecognizer) {
        let point = sender.location(in: self.view)
        xCord = Int(point.x)
        yCord = Int(point.y)
        button.frame = CGRect(x: xCord, y: yCord, width: 70, height: 70)
        print(xCord,yCord)

        
    }
}


