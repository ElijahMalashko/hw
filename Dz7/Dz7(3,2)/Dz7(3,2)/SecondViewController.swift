//
//  SecondViewController.swift
//  Dz7(3,2)
//
//  Created by Elijah Malashko on 21.03.21.
//

import UIKit

class SecondViewController: UIViewController {
    var buttonFill: UIButton!
    var buttonClear: UIButton!
    var objectOne : UILabel!
    var objectTwo : UILabel!
    var objectThree : UILabel!
    var textClear : UILabel!
    var textFill : UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let customView = UIView(frame: UIScreen.main.bounds)
        customView.backgroundColor = .black
        
        buttonFill = UIButton(frame: CGRect(x: 100, y: 750, width: 70, height: 70))
        buttonFill.backgroundColor = .green
        buttonFill.layer.cornerRadius = buttonFill.bounds.size.height/2
        buttonFill.addTarget(self, action: #selector(fillButton), for: .touchUpInside)
        customView.addSubview(buttonFill)
        view = customView
        
        
        buttonClear = UIButton(frame: CGRect(x: 280, y: 750, width: 70, height: 70))
        buttonClear.backgroundColor = .red
        buttonClear.layer.cornerRadius = buttonFill.bounds.size.height/2
        buttonClear.addTarget(self, action: #selector(clearButton), for: .touchUpInside)
        customView.addSubview(buttonClear)
        view = customView
        
        
        
        textClear = UILabel(frame: CGRect(x: 294, y: 765, width: 40, height: 40))
        textClear.text = "Clear"
        customView.addSubview(textClear)
        
        textFill = UILabel(frame: CGRect(x: 122, y: 765, width: 40, height: 40))
        textFill.text = "Fill"
        customView.addSubview(textFill)
        
        
        
        objectOne = UILabel(frame: CGRect(x: 100, y: 200, width: 40, height: 40))
        objectOne.backgroundColor = .white
        customView.addSubview(objectOne)
        
        objectTwo = UILabel(frame: CGRect(x: 100, y: 300, width: 40, height: 40))
        objectTwo.backgroundColor = .white
        customView.addSubview(objectTwo)
        
        objectThree = UILabel(frame: CGRect(x: 100, y: 400, width: 40, height: 40))
        objectThree.backgroundColor = .white
        customView.addSubview(objectThree)
        
        
        
        
    }
    @objc func fillButton() {
        objectOne.frame = CGRect(x: Int.random(in: 20...100), y: Int.random(in: 50...200), width: 40, height: 40)
        
        objectTwo.frame = CGRect(x: Int.random(in: 150...250), y: Int.random(in: 250...400), width: 40, height: 40)
        
        objectThree.frame = CGRect(x: Int.random(in: 300...380), y: Int.random(in: 450...600), width: 40, height: 40)
        
}
    @objc func clearButton() {
        objectOne.frame = CGRect(x: 0, y: 0, width: 0, height: 0)
        
        objectTwo.frame = CGRect(x: 0, y: 0, width: 0, height: 0)
        
        objectThree.frame = CGRect(x: 0, y: 0, width: 0, height: 0)
        

}
}
