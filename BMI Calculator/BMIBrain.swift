//
//  CalculatorBrain.swift
//  BMI Calculator
//
//  Created by Muhammad Adil Mehmood on 17/03/2025.
//  Copyright © 2025 Angela Yu. All rights reserved.
//

import UIKit

struct BMIBrain {
    var bmi : BMI?
    
    var underWeightAdvise : String = "You are underweight"
    var normalWeightAdvise : String = "Rock & Roll. Keep it up."
    var obesityAdvice : String = "You are obese. Get fit!"
    
    mutating func calculateBMI(height : Float, weight : Float) {
        let bmiToBe : Float = (weight / (height * height))
        var adviseToBe : String = ""
        var colorTobe : UIColor = .black
        
        print("bmi is: \(bmiToBe)")
        
        if bmiToBe < 18.5 {
            print("case 1 invoked")
            adviseToBe = underWeightAdvise
            colorTobe = .brown
        }else if bmiToBe >= 18.5 && bmiToBe <= 24.9 {
            print("case 2 invoked")
            adviseToBe = normalWeightAdvise
            colorTobe = .green
        }else {
            print("case default invoked")
            adviseToBe = obesityAdvice
            colorTobe = .red
        }
        
        bmi = BMI(bmiValue: bmiToBe, advice: adviseToBe, color: colorTobe)
    }
    
    func getBMIResult() -> BMI? {
        return bmi
    }
    
    func getAdvise() -> String {
        return bmi?.advice ?? "Ready to calculate?"
    }
}
