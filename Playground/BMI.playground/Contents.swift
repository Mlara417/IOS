import UIKit

func bmiCalculator (mass : Double, height : Double) -> String {
    
    let bmi = mass / (pow(height,2))
    
    let shortBMI = String(format: "%.2f", bmi)
    
    var interpretation = ""
    
    if bmi > 25 {
        interpretation = "You are overweight"
    }
    else if bmi >= 18.5 && bmi <= 25 {
        interpretation = "You are of normal weight"
    }
    else {
        interpretation = "You are underweight"
    }

    return "Your BMI is \(shortBMI) and \(interpretation)"
}

print(bmiCalculator(mass: 83, height: 1.70688))

