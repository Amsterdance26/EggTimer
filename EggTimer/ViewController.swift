//
//  ViewController.swift
//  EggTimer
//
//  Created by Василий Васильевич on 25.01.2023.
//


import UIKit

class ViewController: UIViewController {

    let softTime = 5
    let mediumTime = 7
    let hardTime = 12

    @IBAction func hardnessSelected(_ sender: UIButton) {
        let hardness = sender.currentTitle
        if softTime == 5 {
            print("5")
            }
        if mediumTime == 7 {
            print("7")
        }
    }

}
