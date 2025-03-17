//
//  BMI.swift
//  BMI Calculator
//
//  Created by Muhammad Adil Mehmood on 17/03/2025.
//  Copyright © 2025 Angela Yu. All rights reserved.
//

import UIKit

struct BMI {
    let bmiValue : Float
    let advice : String
    let color : UIColor
    
    func getFormattedBMIValue() -> String {
        return String(format: "%.1f", bmiValue)
    }
}
