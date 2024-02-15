//
//  ViewController.swift
//  Rachakatla_Exam01
//
//  Created by Rachakatla,Varunraj on 2/15/24.
//

import UIKit

class ViewController: UIViewController {
    
    
    @IBOutlet weak var patientIdOL: UITextField!
    
    @IBOutlet weak var fbgOL: UITextField!
    
    
    @IBOutlet weak var outputOL: UILabel!
    
    
    @IBOutlet weak var imageOL: UIImageView!
    

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    
    @IBAction func calculateSugar(_ sender: Any) {
        
        let patientId = patientIdOL.text!
        let fbgValue = fbgOL.text!
        
        let hbValue = 2.6 + (0.03 * Double(fbgValue)!)
        if(hbValue < 4.7){
            outputOL.text = getDetails(patientId: patientId, fbg: fbgValue, hbg: hbValue, result: "Hypoglycemia", tip: "Eat food on time 🍎")
            imageOL.image = UIImage.hypoglycemia;
        }
        else if (hbValue >= 4.7 && hbValue <= 5.59){
            outputOL.text = getDetails(patientId: patientId, fbg: fbgValue, hbg: hbValue, result: "Normal", tip: "You are doing great 👍")
            imageOL.image = UIImage.normal;
        }
        else if (hbValue >= 5.60 && hbValue <= 6.35){
            outputOL.text = getDetails(patientId: patientId, fbg: fbgValue, hbg: hbValue, result: "Pre-Diabetes", tip: "You should work on your diet and maintain workout 🏋️")
            imageOL.image = UIImage.preDiabetes;
        }
        else{
            outputOL.text = getDetails(patientId: patientId, fbg: fbgValue, hbg: hbValue, result: "Diabetes", tip: "Consult doctor for medication 🩺")
            imageOL.image = UIImage.diabetes;
        }
    }
    
    @IBAction func reset(_ sender: Any) {
        patientIdOL.text = "";
        fbgOL.text = "";
        outputOL.text = "";
        imageOL.image = nil;
    }
    
    
    func getDetails(patientId: String, fbg: String, hbg: Double, result: String, tip: String)->String{
        return "Patient ID :\(patientId)\n\nFBG Level :\(Double(fbg)!) (mg/dll)\n\nHbA1c(%): \(String(format: "%.2f", hbg))%\n\nResult:\(result)\n\nHealth Tip: \(tip)";
    }
    


}

