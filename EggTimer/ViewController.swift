//
//  ViewController.swift
//  EggTimer
//
//  Created by Василий Васильевич on 25.01.2023.
//


import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var progressBar: UIProgressView!

    @IBOutlet weak var titleLable: UILabel!

    let eggTimes = ["Soft": 3, "Medium": 4, "Hard": 7]
    var timer = Timer()
    var totalTime = 0
    var secondPassed = 0

    @IBAction func hardnessSelected(_ sender: UIButton) {



        timer.invalidate()

        let hardness = sender.currentTitle!

        totalTime = eggTimes[hardness]!

        progressBar.progress = 0.0
        secondPassed = 0
        titleLable.text = hardness

        timer = Timer.scheduledTimer(timeInterval: 1.0, target: self, selector: #selector(updateTimer), userInfo: nil, repeats: true)
    }

    @objc func updateTimer() {
        if secondPassed < totalTime {
            secondPassed += 1
            progressBar.progress = Float(secondPassed) / Float(totalTime)
        } else {
            timer.invalidate()
            titleLable.text = "DONE!"
        }
    }
}
