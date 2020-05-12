//
//  CalculatorBrain.swift
//  BMI-Calculator-LayoutPractice
//
//  Created by Manuel Alejandro Verdugo Pérez on 07/04/20.
//

import UIKit

struct CalculatorBrain {
    private var bmi: BMI?
    
    mutating func calculateBMI(height: Float, weight: Float){
        let bmiValue = weight / pow(height, 2)
        
        if bmiValue < 18.5 {
            bmi = BMI(value: bmiValue, advice: "Trata de comer un poco más :)", color: #colorLiteral(red: 0.4745098054, green: 0.8392156959, blue: 0.9764705896, alpha: 1))
        } else if bmiValue < 24.9 {
           bmi = BMI(value: bmiValue, advice: "Fit!", color: #colorLiteral(red: 0.721568644, green: 0.8862745166, blue: 0.5921568871, alpha: 1))
        } else {
           bmi = BMI(value: bmiValue, advice: "Come menos pasteles", color: #colorLiteral(red: 0.9098039269, green: 0.4784313738, blue: 0.6431372762, alpha: 1))
        }
    }
    
    func getBMIValue() -> String {
        let bmiString = String(format: "%.1f", bmi?.value ?? 0.0)
        return bmiString
    }
    
    func getBMIAdvice() -> String {
        return bmi?.advice ?? "Error al calcular el BMI"
    }
    
    func getBMIColor() -> UIColor {
        return bmi?.color ?? #colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)
    }
}
