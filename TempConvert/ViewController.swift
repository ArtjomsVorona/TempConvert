//
//  ViewController.swift
//  TempConvert
//
//  Created by Artjoms Vorona on 28/10/2019.
//  Copyright © 2019 Artjoms Vorona. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var celsiusLabel: UILabel!
    @IBOutlet weak var fahrenheitLabel: UILabel!
    @IBOutlet weak var tempSlider: UISlider!
    

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    func convertToFahrenheitFrom(celsius: Int) -> Double {
        return (Double(celsius) * 9 / 5) + 32
    }
    
    func basicAlert(title: String, message: String) {
        let alert = UIAlertController(title: title, message: message, preferredStyle: .alert)
        alert.addAction(UIAlertAction(title: "Ok", style: .default, handler: nil))
        present(alert, animated: true, completion: nil)
    }
    
    
    @IBAction func actionBarButtonTapped(_ sender: UIBarButtonItem) {
        basicAlert(title: "", message: "This function is not yet available.")
    }
    
    @IBAction func tempSliderMoved(_ sender: UISlider) {
        let temp = Int(sender.value)
        celsiusLabel.text = "\(temp) °C"
        
        let fahrenTempString = String(format: "%.2F", convertToFahrenheitFrom(celsius: temp))
        fahrenheitLabel.text = fahrenTempString + " °F"
        
    }
    
    

}

