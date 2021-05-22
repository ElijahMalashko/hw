//
//  ViewController.swift
//  Dz18(2)
//
//  Created by Elijah Malashko on 12.05.21.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var imageView: UIImageView!
    let password = "123"
    var images = [UIImage]()

    override func viewDidLoad() {
        super.viewDidLoad()
    }
    private func displayImahePickerController() {
        let imagePickerController = UIImagePickerController()
        imagePickerController.delegate = self
        imagePickerController.sourceType = .photoLibrary
        present(imagePickerController, animated: true, completion: nil)
    }
    @IBAction private func onShowImagePicker(_ sender: Any) {
        displayImahePickerController()
    }
    @IBAction private func onAllPhotosButton(_ sender: Any) {
        let alertController = UIAlertController(title: "Вход", message: "Введите данные для входа", preferredStyle: .alert)
        let alertOkAction = UIAlertAction(title: "Войти", style: .default) { (alertAction) in
            let textField = alertController.textFields![0] as UITextField
            if textField.text! == self.password {
                let storyboard = UIStoryboard(name: "SecondViewController", bundle: Bundle.main)
                let destinationViewController = storyboard.instantiateInitialViewController()!
                self.navigationController?.pushViewController(destinationViewController, animated: true)
            }
        }
        alertController.addAction(alertOkAction)
        alertController.addTextField { (passwordTF) in
            passwordTF.placeholder = "Ваш пароль"
            passwordTF.isSecureTextEntry = true
        }
        present(alertController, animated: true, completion: nil)
    }
}
extension ViewController: UIImagePickerControllerDelegate, UINavigationControllerDelegate {
    func imagePickerController(_ picker: UIImagePickerController, didFinishPickingMediaWithInfo info: [UIImagePickerController.InfoKey : Any]) {
        let image = info[.originalImage] as! UIImage
        images.append(image)
        picker.dismiss(animated: true, completion: nil)
    }
}
