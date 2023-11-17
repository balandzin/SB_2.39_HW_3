//
//  ViewController.swift
//  HW_3
//
//  Created by Антон Баландин on 17.11.23.
//

import UIKit

final class ViewController: UIViewController {

    @IBOutlet var colorfulLabel: UIView!

    @IBOutlet var redSlider: UISlider!
    @IBOutlet var blueSlider: UISlider!
    @IBOutlet var greenSlider: UISlider!
    
    
    @IBOutlet var redValueLabel: UILabel!
    @IBOutlet var greenValueLabel: UILabel!
    @IBOutlet var blueValueLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        colorfulLabel.layer.cornerRadius = 25
        
        changeColor()
    }

    @IBAction func redSliderAction() {
        redValueLabel.text = String(format: "%.2f", redSlider.value)
        changeColor()
    }
    
    @IBAction func greenSliderAction() {
        greenValueLabel.text = String(format: "%.2f", greenSlider.value)
        changeColor()
    }
    
    @IBAction func blueSliderAction() {
        blueValueLabel.text = String(format: "%.2f", blueSlider.value)
        changeColor()
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

