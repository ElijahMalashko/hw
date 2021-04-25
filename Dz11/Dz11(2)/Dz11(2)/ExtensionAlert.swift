//
//  ExtensionAlert.swift
//  Dz11(2)
//
//  Created by Elijah Malashko on 25.04.21.
//

import Foundation
import UIKit

extension UIViewController {
    func displayAlert() {
        let alertController = UIAlertController(title: "The Internet connection appears to be offline", message: "", preferredStyle: .alert)
        let closeAction = UIAlertAction(title: "Close", style: .default) { (_) in

        }
        alertController.addAction(closeAction)
        present(alertController, animated: true, completion: nil)
    }
}
extension UIViewController {
    func displayAlertTwoButton() {
        let alertController = UIAlertController(title: "Sign out?", message: "You can always access your content by signing back in", preferredStyle: .alert)
        let closeAction = UIAlertAction(title: "Close", style: .cancel) { (_) in

        }
        let signOutAction = UIAlertAction(title: "Sign out", style: .destructive) { (_) in

        }
        alertController.addAction(signOutAction)
        alertController.addAction(closeAction)
        present(alertController, animated: true, completion: nil)
    }
}
