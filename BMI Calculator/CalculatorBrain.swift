//
//  CalculatorBrain.swift
//  BMI Calculator
//
//  Created by Muhammad Adil Mehmood on 17/03/2025.
//  Copyright © 2025 Angela Yu. All rights reserved.
//

import Foundation


struct CalculatorBrain {
    var bmiResult : String?
    
    mutating func calculateBMI(height : Float, weight : Float) -> String {
        bmiResult = (String(format: "%.1f", (weight / (height * height))));
        return bmiResult ?? ""
    }
    
    func getBMIResult() -> String {
        return bmiResult ?? "Unexpected result"
    }
}
