//
//  FourthViewController.swift
//  Dz7(1)
//
//  Created by Elijah Malashko on 22.03.21.
//

import UIKit

class FourthViewController: UIViewController {
    var textOfLableFourth:String = ""

    override func viewDidLoad() {
        super.viewDidLoad()

        
    }
    override func prepare(for segue: UIStoryboardSegue, sender: Any?){
        let destinationViewController = segue.destination as? FifthViewController
        destinationViewController?.textOfLableFive = textOfLableFourth
    

    

}
}
