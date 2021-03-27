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
    
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        let customView = UIView(frame: UIScreen.main.bounds)
        customView.backgroundColor = .black
        
        buttonUP = UIButton(frame: CGRect(x: 184, y: 642, width: 50, height: 50))
        buttonUP.addTarget(self, action: #selector(UpButton), for: .touchUpInside)
        customView.addSubview(buttonUP)
        view = customView
        
        
        buttonDown = UIButton(frame: CGRect(x: 184, y: 729, width: 50, height: 50))
        buttonDown.addTarget(self, action: #selector(DownButton), for: .touchUpInside)
        customView.addSubview(buttonDown)
        view = customView
        
        
        
        buttonLeft = UIButton(frame: CGRect(x: 101, y: 686, width: 50, height: 50))
        buttonLeft.addTarget(self, action: #selector(LeftButton), for: .touchUpInside)
        customView.addSubview(buttonLeft)
        view = customView
        
        
        
        buttonRight = UIButton(frame: CGRect(x: 264, y: 686, width: 50, height: 50))
        buttonRight.addTarget(self, action: #selector(RightButton), for: .touchUpInside)
        customView.addSubview(buttonRight)
        view = customView
        
        
        
        object = UILabel(frame: CGRect(x: xCoordinates, y: yCoordinates, width: 70, height: 70))
        object.backgroundColor = .white
        customView.addSubview(object)
        
        
        

        if let image = UIImage(named: "down") {
            self.buttonDown.setImage(image, for: .normal)
        }
        if let image = UIImage(named: "up") {
            self.buttonUP.setImage(image, for: .normal)
        }
        if let image = UIImage(named: "left") {
            self.buttonLeft.setImage(image, for: .normal)
        }
        if let image = UIImage(named: "right") {
            self.buttonRight.setImage(image, for: .normal)
        }
        
        
        
        
        
        
        
    }
    @objc func UpButton(){
        yCoordinates = yCoordinates - 15
        object.frame = CGRect(x: xCoordinates, y: yCoordinates, width: 70, height: 70)
        
        
    }
    @objc func DownButton(){
        yCoordinates = yCoordinates + 15
        object.frame = CGRect(x: xCoordinates, y: yCoordinates, width: 70, height: 70)
       
    }
    @objc func LeftButton(){
        if xCoordinates < 0 {
            xCoordinates = xCoordinates + 186
        }
        xCoordinates = xCoordinates - 15
        object.frame = CGRect(x: xCoordinates, y: yCoordinates, width: 70, height: 70)
        
        
    }
    @objc func RightButton(){
        if xCoordinates > 355 {
            xCoordinates = xCoordinates - 186
        }
        xCoordinates = xCoordinates + 15
        object.frame = CGRect(x: xCoordinates, y: yCoordinates, width: 70, height: 70)
        
    }
}
