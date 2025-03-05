//
//  ViewController.swift
//  BMI Calculator
//
//  Created by Angela Yu on 21/08/2019.
//  Copyright © 2019 Angela Yu. All rights reserved.
//

import UIKit

class CalculateBMIViewController: UIViewController {
    
    @IBOutlet weak var heightValue: UILabel!
    @IBOutlet weak var weightValue: UILabel!
    
    @IBOutlet weak var heightBar: UISlider!
    @IBOutlet weak var weightBar: UISlider!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
        renderUI()
    }
    
    @IBAction func onHeightSliderChanged(_ sender: UISlider) {
        renderUI()
    }
    
    
    @IBAction func onWeightSliderChanged(_ sender: UISlider) {
    renderUI()
    }
    
    func renderUI () {
        heightValue.text = "\(String(format: "%.1f", heightBar.value)) Meters"
        weightValue.text = "\(String(format: "%.1f", weightBar.value)) Kilograms"
    }
    
    
    @IBAction func calculate(_ sender: UIButton) {
        var height : Float = heightBar.value
        var weight : Float = weightBar.value
        
        // using the provided height & weight, generate BMI
        print("BMI IS: \(String(format: "%.1f", (weight / (height * height))))")
        
        self.performSegue(withIdentifier: "goToResults", sender: self)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "goToResults" {
            let destinationVC = segue.destination as! ResultViewController
            destinationVC.bmi = String(format: "%.1f", (weightBar.value / ((heightBar.value * heightBar.value))))
        }
    }
    
}

