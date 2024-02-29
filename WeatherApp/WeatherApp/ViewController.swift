//
//  ViewController.swift
//  WeatherApp
//
//  Created by Rachakatla,Varunraj on 1/30/24.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var inputOL: UITextField!
    
    @IBOutlet weak var outputOL: UILabel!
    
    @IBOutlet weak var imageOL: UIImageView!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func btnClicked(_ sender: Any) {
        let temp = Int(inputOL.text!)!
        
        if(temp > 60){
            outputOL.text = "The Temperature is \(temp), It's Hot."
            UIView.animate(withDuration: 1, delay: 0.5, animations: {
                self.imageOL.alpha = 0
                self.imageOL.alpha = 1;
                self.imageOL.image = UIImage.hotWeather
            })
        }
        else if(temp<=60){
            outputOL.text = "The Temperature is \(temp), It's cold."
            UIView.animate(withDuration: 1, delay: 0.5, animations: {
                self.imageOL.alpha = 0
                self.imageOL.alpha = 1;
                self.imageOL.image = UIImage.coldWeather
            })
        }
    }
    
}

