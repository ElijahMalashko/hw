//
//  ExtensionAlert.swift
//  Dz(18.1)
//
//  Created by Elijah Malashko on 12.05.21.
//

import Foundation
import UIKit

extension UIView {
    func displayAlert() {
        let alertController = UIAlertController(title: "The Internet connection appears to be offline", message: "", preferredStyle: .alert)
        let closeAction = UIAlertAction(title: "Close", style: .default) { (_) in

        }
        alertController.addAction(closeAction)
        present(alertController, animated: true, completion: nil)
    }
}

