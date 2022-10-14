//
//  ViewController.swift
//  TConverter
//
//  Created by iggy on 29.08.22.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var celsiusLabel: UILabel!
    @IBOutlet weak var farenheitLabel: UILabel!
    @IBOutlet weak var slider: UISlider! { // Устанавливаем значения для слайдера
        didSet {
            slider.maximumValue = 100
            slider.minimumValue = 0
            slider.value = 0
        }
    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }

    @IBAction func sliderChanged(_ sender: UISlider) {
        let temperatureCelsius = Int(round(sender.value)) // Приводим значение в Int
        celsiusLabel.text = "\(temperatureCelsius)ºC"
        
        let farenheitTemperature = Int(round((sender.value * 9 / 5) + 32)) // Приводим значение в Int + формула для градуса по Фаренгейту
        farenheitLabel.text = "\(farenheitTemperature)ºF"
        
    }
    
}

