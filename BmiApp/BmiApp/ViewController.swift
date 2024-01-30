//
//  ViewController.swift
//  BmiApp
//
//  Created by Rachakatla,Varunraj on 1/30/24.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var heightOL: UITextField!
    
    
    @IBOutlet weak var weightOL: UITextField!
    
    
    @IBOutlet weak var outputOL: UILabel!
    
    
    @IBOutlet weak var imageOL: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func btnClicked(_ sender: Any) {
        
        var height = Double(heightOL.text!)!
        
        var weight = Double(weightOL.text!)!
        
         let bmi = 703 * (weight / (height * height))
        
        if (bmi > 25)
        {
            outputOL.text = "Your bmi is \(bmi) therefore you are overweight"
            print(bmi)
            imageOL.image = UIImage(named:"obese.jpeg")
        }
        else if (bmi >= 18.5 && bmi < 25)
        {
            outputOL.text = "Your bmi is \(bmi) therefore you are of normal weight"
            imageOL.image = UIImage(named:"normal.jpeg")
            print(bmi)
        }
        else
        {
            outputOL.text = "Your bmi is \(bmi) therefore you are under weight"
            imageOL.image = UIImage(named:"under.jpeg")
            print(bmi)
        }
        
    }
    
}

