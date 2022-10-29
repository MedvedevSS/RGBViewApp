//
//  ViewController.swift
//  RGBViewApp
//
//  Created by Sergey Medvedev on 27.10.2022.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet var mainView: UIView!
    
    @IBOutlet var redNumber: UILabel!
    @IBOutlet var greenNumber: UILabel!
    @IBOutlet var blueNumber: UILabel!
    
    @IBOutlet var redSlider: UISlider!
    @IBOutlet var greenSlider: UISlider!
    @IBOutlet var blueSlider: UISlider!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // MARK: - View
        mainView.layer.cornerRadius = 15
        mainView.backgroundColor = UIColor(red: CGFloat(redSlider.value) / 255, green: CGFloat(greenSlider.value) / 255, blue: CGFloat(blueSlider.value) / 255, alpha: 1)
        
        // MARK: - Number Label
        
        
        // MARK: - Slider
        redSlider.value = 10
        redSlider.tintColor = .red
        
        greenSlider.value = 60
        greenSlider.tintColor = .green
        
        blueSlider.value = 200
        
    }
    @IBAction func redSliderAction(_ sender: UISlider) {
        redNumber.text = String(Int(sender.value))
    }
    @IBAction func greenSliderAction(_ sender: UISlider) {
        greenNumber.text = String(Int(sender.value))
    }
    @IBAction func blueSliderAction(_ sender: UISlider) {
        blueNumber.text = String(Int(sender.value))
    }
    
}
    
    
    
    
