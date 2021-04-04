//
//  ViewController.swift
//  Dz9
//
//  Created by Elijah Malashko on 30.03.21.
//

import UIKit

class ViewController: UIViewController {
    var screenNumber: Double = 0
    var firstNumber: Double = 0
    var mathSign: Bool = false
    var operarion: Int = 0

    @IBOutlet weak var lable: UILabel!
    @IBAction func numbers(_ sender: UIButton) {
        if mathSign == true {
            lable.text = String(sender.tag)
            mathSign = false }
    else {
            lable.text = lable.text! + String(sender.tag) }
        screenNumber = Double(lable.text!)! }
    @IBAction func onButtons(_ sender: UIButton) {
        if lable.text != "" && sender.tag != 10 && sender.tag != 15 {
            firstNumber = Double(lable.text!)!
            if sender.tag == 11 {
                lable.text = "/" }
    else if sender.tag == 12    {
                lable.text = "x" }
            else if sender.tag == 13 {
                lable.text = "-" }
            else if sender.tag == 14 {
                lable.text = "+"
            }
            operarion = sender.tag
            mathSign = true }
        else if sender.tag == 15 {
            if operarion == 11 {
                lable.text = String(firstNumber / screenNumber) }
            else if operarion == 12 {
                lable.text = String(firstNumber * screenNumber) }
            else if operarion == 13{
                lable.text = String(firstNumber - screenNumber) }
            else if operarion == 14{
                lable.text = String(firstNumber + screenNumber) }
        }
        else if sender.tag == 10 {
            lable.text = ""
            screenNumber = 0
            operarion = 0
            firstNumber = 0
        }
    }
    override func viewDidLoad() {
        super.viewDidLoad()
    }
}
