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
            imageOL.image = UIImage(named:"hot-weather.jpeg")
        }
        else if(temp<=60){
            outputOL.text = "The Temperature is \(temp), It's cold."
            imageOL.image = UIImage(named:"cold-weather.jpeg")
        }
    }
    
}

