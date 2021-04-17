//
//  SecondViewController.swift
//  Dz7(3)
//
//  Created by Elijah Malashko on 21.03.21.
//

import UIKit

class SecondViewController: UIViewController {
    var button: UIButton!
    override func viewDidLoad() {
        super.viewDidLoad()

        let customView = UIView(frame: UIScreen.main.bounds)
        customView.backgroundColor = .blue
        
        button = UIButton(frame: CGRect(x: 100, y: 100, width: 100, height: 100))
        button.backgroundColor = .black
        button.layer.cornerRadius = button.bounds.size.height/2
        button.addTarget(self, action: #selector(onButtonClick), for: .touchUpInside)
        customView.addSubview(button)
        view = customView
    }
    
  @objc func onButtonClick() {
    button.frame = CGRect(x: Int.random(in: 50...300), y: Int.random(in: 50...700), width: 100, height: 100)
       
    }
    

   
}
