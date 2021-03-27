//
//  SecondViewController.swift
//  Dz8(1)
//
//  Created by Elijah Malashko on 26.03.21.
//

import UIKit

class SecondViewController: UIViewController {
    @IBOutlet weak var button: UIButton!
    
    var xCord:Int = 0
    var yCord:Int = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
    }
    @IBAction func onTap(_ sender: UITapGestureRecognizer) {
        let point = sender.location(in: self.view)
        xCord = Int(point.x)
        yCord = Int(point.y)
        button.frame = CGRect(x: xCord, y: yCord, width: 70, height: 70)
        

}
    @IBAction func onButton(_ sender: Any) {
        button.frame = CGRect(x: 0, y: 0, width: 70, height: 70)
    }
    
    
    
}


