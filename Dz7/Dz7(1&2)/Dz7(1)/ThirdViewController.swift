//
//  ThirdViewController.swift
//  Dz7(1)
//
//  Created by Elijah Malashko on 22.03.21.
//

import UIKit

class ThirdViewController: UIViewController {
    var textOfLableThird: String = ""
    override func viewDidLoad() {
        super.viewDidLoad()

        
    }
    override func prepare(for segue: UIStoryboardSegue, sender: Any?){
        let destinationViewController = segue.destination as? FourthViewController
        destinationViewController?.textOfLableFourth = textOfLableThird
   

}
}
