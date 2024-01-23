//
//  ViewController.swift
//  RachakatlaHelloApp
//
//  Created by Rachakatla,Varunraj on 1/23/24.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var inputOL: UITextField!
    
    
    @IBOutlet weak var outputOL: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    @IBAction func submitBtnClicked(_ sender: Any) {
        
        //Read the entered name first
        
        let name = inputOL.text!
        
        // string interpolation
        
        let str:String = String("Hello, \(name)");

        //Assign it to the display or outputol
        
        outputOL.text = str
        
        
    }
    

}

