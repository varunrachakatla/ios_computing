//
//  ViewController.swift
//  Rachakatla_PracticeExam01
//
//  Created by Rachakatla,Varunraj on 2/13/24.
//

import UIKit

class ViewController: UIViewController {
    
    
    @IBOutlet weak var heightFeetOL: UITextField!
    
    @IBOutlet weak var heightInchOL: UITextField!
    
    @IBOutlet weak var patientWeightOL: UITextField!
    
    @IBOutlet weak var imageOutlet: UIImageView!
    
    @IBOutlet weak var outputOL: UILabel!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func calculateBmi(_ sender: Any) {
        
        let heightFeet = Double(heightFeetOL.text!)!
        let heightInch = Double(heightInchOL.text!)!
        
        let weight = Double(patientWeightOL.text!)!
        
        let totalHeight = (heightFeet * 12) + heightInch;
        
        let bmi = 703 * (weight/(totalHeight*totalHeight))
        
        
        
        if(bmi <= 18.5){
            outputOL.text = "Your Body Mass Index is \(String(format: "%.1f", bmi)). \n This is considered Underweight."
            
            imageOutlet.image = UIImage.underWeight
            
        }
        else if(bmi >= 18.6 && bmi <= 24.9){
            outputOL.text = "Your Body Mass Index is \(String(format: "%.1f", bmi)). \n This is considered Normal👍."
            imageOutlet.image = UIImage.normal
        }
        else if(bmi >= 25 && bmi <= 29.9){
            outputOL.text = "Your Body Mass Index is \(String(format: "%.1f", bmi)). \n This is considered Overweight."
            imageOutlet.image = UIImage.overWeight
        }
        else{
            outputOL.text = "Your Body Mass Index is \(String(format: "%.1f", bmi)).\nThis is considered Obesity."
            imageOutlet.image = UIImage.obese
        }
        
        
        
    }
    
    
    
}

