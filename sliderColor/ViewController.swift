//
//  ViewController.swift
//  sliderColor
//
//  Created by Macbook on 3.02.2024.
//

import UIKit

final class ViewController: UIViewController {

    @IBOutlet var scratch: UIView!
    
    @IBOutlet var redSlider: UISlider!
    @IBOutlet var greenSlider: UISlider!
    @IBOutlet var blueSlider: UISlider!
    
    @IBOutlet var redCounter: UILabel!
    @IBOutlet var greenCounter: UILabel!
    @IBOutlet var blueCounter: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setUpScratch()
        redSliderAction()
        greenSliderAction()
        blueSliderAction()
    }

    @IBAction func redSliderAction() {
        scratch.backgroundColor = .init(red: CGFloat(redSlider.value), green: CGFloat(greenSlider.value), blue: CGFloat(blueSlider.value), alpha: 1)
        redCounter.text = redSlider.value.formatted()
    }
    
    @IBAction func greenSliderAction() {
        scratch.backgroundColor = .init(red: CGFloat(redSlider.value), green: CGFloat(greenSlider.value), blue: CGFloat(blueSlider.value), alpha: 1)
       greenCounter.text = greenSlider.value.formatted()
    }
    
    @IBAction func blueSliderAction() {
        scratch.backgroundColor = .init(red: CGFloat(redSlider.value), green: CGFloat(greenSlider.value), blue: CGFloat(blueSlider.value), alpha: 1)
        blueCounter.text = blueSlider.value.formatted()
    }
    
    private func setUpScratch() {
        scratch.layer.cornerRadius = 20
    }
}

