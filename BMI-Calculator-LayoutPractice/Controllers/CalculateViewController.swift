//
//  ViewController.swift
//  BMI-Calculator-LayoutPractice
//
//

import UIKit

class CalculateViewController: UIViewController {

    @IBOutlet weak var heightLabel: UILabel!
    @IBOutlet weak var weightLabel: UILabel!
    
    @IBOutlet weak var heightSlider: UISlider!
    @IBOutlet weak var weightSlider: UISlider!
    
    var calculatorBrain = CalculatorBrain()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }


    @IBAction func heightSliderChange(_ sender: UISlider) {
        let height = String(format: "%.2f", sender.value)
        heightLabel.text = "\(height)m"
    }
    
    @IBAction func weightSliderChange(_ sender: UISlider) {
        let weight = String(format:"%.0f", sender.value)
        weightLabel.text = "\(weight)kg"
    }
    
    @IBAction func calculateBMIPress(_ sender: UIButton) {
        print("calculateBMIPress")
        let height = heightSlider.value
        let weight = weightSlider.value
       
        calculatorBrain.calculateBMI(height: height, weight: weight)
        
        self.performSegue(withIdentifier: "goToResult", sender: self)
        
        /*
        let secondVC = SecondViewController()
        secondVC.bmiValue = String(format: "%.1f" ,bmi)
        
        self.present(secondVC, animated: true, completion: nil)
 */
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        print("prepare")
        // Obtener el viewcontroller
        if segue.identifier == "goToResult" {
            // castear a ResultViewController para que reconozca la propiedad bmiValue
            let destinationVC = segue.destination as! ResultViewController
            
            destinationVC.bmiValue =  calculatorBrain.getBMIValue()
            destinationVC.bmiAdvice =  calculatorBrain.getBMIAdvice()
            destinationVC.bmiColor =  calculatorBrain.getBMIColor()
        }
    }

}

