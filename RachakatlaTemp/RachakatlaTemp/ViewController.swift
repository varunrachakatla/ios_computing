//
//  ViewController.swift
//  RachakatlaTemp
//
//  Created by Rachakatla,Varunraj on 1/25/24.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var inputOL: UITextField!

    
    @IBOutlet weak var outputOL: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func buttonClicked(_ sender: Any) {
        let inputValue = Int(inputOL.text!)!;
        
        if(inputValue >= 60){
            outputOL.text = "It's \(inputValue), Hot!"
        }
        else{
            outputOL.text = "It's \(inputValue), cold!"
        }
    }
    
}

