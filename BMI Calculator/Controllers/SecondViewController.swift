//
//  SecondViewController.swift
//  BMI Calculator
//
//  Created by Muhammad Adil Mehmood on 06/03/2025.
//  Copyright © 2025 Angela Yu. All rights reserved.
//

import UIKit

class SecondViewController : UIViewController {
    
    var bmiValue : String = ""
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        view.backgroundColor = .red
        
        let label = UILabel()
        label.text = "BMI: \(bmiValue)"
        label.frame = CGRect(x: 100, y: 100, width: 200, height: 50)
        view.addSubview(label)
    }
    
}
