//
//  SecondViewController.swift
//  Dz7(3,3)
//
//  Created by Elijah Malashko on 21.03.21.
//
import UIKit

class SecondViewController: UIViewController {
    var buttonUP: UIButton!
    var buttonDown: UIButton!
    var buttonLeft: UIButton!
    var buttonRight: UIButton!
    var object: UILabel!
    
    var xCoordinates: Int = 186
    var yCoordinates: Int = 351
    
    @IBOutlet weak var button: UIButton!
    
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }
    @IBAction func leftSwipe(_ sender: Any) {
        if xCoordinates < 0 {
            xCoordinates = xCoordinates + 186
        }
        xCoordinates = xCoordinates - 15
        button.frame = CGRect(x: xCoordinates, y: yCoordinates, width: 70, height: 70)
        
    }
    @IBAction func upSwipe(_ sender: Any) {
        yCoordinates = yCoordinates - 15
        button.frame = CGRect(x: xCoordinates, y: yCoordinates, width: 70, height: 70)
        
    }
    
    @IBAction func rightSwipe(_ sender: Any) {
        print("1")
        if xCoordinates > 355 {
            xCoordinates = xCoordinates - 186
        }
        xCoordinates = xCoordinates + 15
        button.frame = CGRect(x: xCoordinates, y: yCoordinates, width: 70, height: 70)
        
    }
    @IBAction func downSwipe(_ sender: Any) {
        
        yCoordinates = yCoordinates + 15
        button.frame = CGRect(x: xCoordinates, y: yCoordinates, width: 70, height: 70)
       
    }

}

