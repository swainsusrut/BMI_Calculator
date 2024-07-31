//
//  CalculatorBrain.swift
//  BMI Calculator
//
//  Created by Swain, Susrut (Cognizant) on 21/10/23.
//  Copyright © 2023 Angela Yu. All rights reserved.
//

import UIKit

struct CalculateBrain {
    
    var bmi : BMI?
    
    mutating func calculateBMI(height : Float, weight : Float) {
        let bmiValue = weight / pow(height, 2)
        
        if (bmiValue < 18.5) {
            bmi = BMI(value: bmiValue, advice: "Eat some more Snacks!!", color: UIColor.systemPurple)
        } else if (bmiValue >= 18.5 && bmiValue < 24.9) {
            bmi = BMI(value: bmiValue, advice: "Fit as a fiddle!", color: UIColor.systemGreen)
        } else {
            bmi = BMI(value: bmiValue, advice: "Eat less Pies!!", color: UIColor.systemOrange)
        }
    }
    
    func getBMIValue() -> String {
        let bmiValue = String(format: "%.1f", bmi?.value ?? "0.0")
        return bmiValue
    }
    
    func getAdvice() -> String {
        return bmi?.advice ?? "No Advice"
    }
    
    func getColor() -> UIColor {
        return bmi?.color ?? UIColor.white
    }
}
