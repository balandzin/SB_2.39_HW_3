//
//  ViewController.swift
//  HW_3
//
//  Created by Антон Баландин on 17.11.23.
//

import UIKit

final class ViewController: UIViewController {

    @IBOutlet var colorfulLabel: UIView!
    
    @IBOutlet var redValueLabel: UILabel!
    @IBOutlet var greenValueLabel: UILabel!
    @IBOutlet var blueValueLabel: UILabel!

    @IBOutlet var redSlider: UISlider!
    @IBOutlet var blueSlider: UISlider!
    @IBOutlet var greenSlider: UISlider!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        colorfulLabel.layer.cornerRadius = 25
        
        changeColor()
        
        redValueLabel.text = String(format: "%.2f", redSlider.value)
        greenValueLabel.text = String(format: "%.2f", greenSlider.value)
        blueValueLabel.text = String(format: "%.2f", blueSlider.value)
    }

    @IBAction func sliderAction(_ sender: UISlider) {
        changeColor()

        switch sender {
        case redSlider:
            redValueLabel.text = String(format: "%.2f", redSlider.value)
        case greenSlider:
            greenValueLabel.text = String(format: "%.2f", greenSlider.value)
        default:
            blueValueLabel.text = String(format: "%.2f", blueSlider.value)
        }
    }
    
    private func changeColor() {
        colorfulLabel.backgroundColor = UIColor(
            red: CGFloat(redSlider.value),
            green: CGFloat(greenSlider.value),
            blue: CGFloat(blueSlider.value),
            alpha: 1
        )
    }
}

