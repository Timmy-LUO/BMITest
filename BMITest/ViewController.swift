//
//  ViewController.swift
//  BMITest
//
//  Created by 羅承志 on 2021/5/2.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var heightTextField: UITextField!
    @IBOutlet weak var weightTextField: UITextField!
    @IBOutlet weak var BMILabel: UILabel!
    @IBOutlet weak var BMIButton: UIButton!
    @IBOutlet weak var adviceLabel: UILabel!
    
    var changeBMI = Double(0)
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }
    
    @IBAction func BMICountButton(_ sender: Any) {
        let heightText = heightTextField.text!
        let weightText = weightTextField.text!
        let height = Double(heightText)
        let weight = Double(weightText)
        if height != nil, weight != nil {
            let heightMeter = height! / 100
            let BMI = weight! / (heightMeter * heightMeter)
            BMILabel.text = String(format: "%.2f", BMI)
        }
        //身體質量指數
        changeBMI = Double(BMILabel.text!)!
        if changeBMI <= 18.5 {
            adviceLabel.text = "體重過輕"
        } else if changeBMI <= 24 {
            adviceLabel.text = "正常範圍"
        } else if changeBMI <= 27 {
            adviceLabel.text = "過重"
        } else if changeBMI <= 30 {
            adviceLabel.text = "輕度肥胖"
        } else if changeBMI <= 35 {
            adviceLabel.text = "中度肥胖"
        } else if changeBMI >= 35 {
            adviceLabel.text = "重度肥胖"
        }
        view.endEditing(true)
    }
}
