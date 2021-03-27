//
//  FifthViewController.swift
//  Dz7(1)
//
//  Created by Elijah Malashko on 22.03.21.
//

import UIKit

class FifthViewController: UIViewController {
    @IBOutlet weak var lable: UILabel!
    @IBOutlet weak var lableInfo: UILabel!
    @IBOutlet weak var lableInfoSecond: UILabel!
    @IBOutlet weak var lableInfoThird: UILabel!
    let info = Info(email: "Test@Test.com", name:"Ilya" , surname: "Malashko")
    var textOfLableFive: String = ""
    
    override func viewDidLoad() {
        super.viewDidLoad()
    lable.text = textOfLableFive
    lableInfo.text = info.name
    lableInfoSecond.text = info.surname
    lableInfoThird.text = info.email
        
    }
    

    

}
