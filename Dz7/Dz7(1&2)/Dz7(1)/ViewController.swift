//
//  ViewController.swift
//  Dz7(1)
//
//  Created by Elijah Malashko on 22.03.21.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var textField: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
    
    
}
    override func prepare(for segue: UIStoryboardSegue, sender: Any?){
        let destinationViewController = segue.destination as? SecondViewController
        destinationViewController?.textOfLable = textField.text!
        

   
}
    


}

