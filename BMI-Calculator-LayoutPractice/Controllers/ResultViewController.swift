//
//  ResultViewController.swift
//  BMI-Calculator-LayoutPractice
//
//  Created by Manuel Alejandro Verdugo Pérez on 07/04/20.
//

import UIKit

class ResultViewController: UIViewController {
    
    var bmiValue: String?
    var bmiAdvice: String?
    var bmiColor: UIColor?
    
    @IBOutlet weak var resultLabel: UILabel!
    @IBOutlet weak var adviceLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        resultLabel.text = bmiValue!
        adviceLabel.text = bmiAdvice!
        view.backgroundColor = bmiColor
        // Do any additional setup after loading the view.
    }
    
    @IBAction func recalculatePress(_ sender: UIButton) {
        self.dismiss(animated: true, completion: nil)
    }
    
}
