//
//  ViewController.swift
//  HelloFullName
//
//  Created by Rachakatla,Varunraj on 1/23/24.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var firstOL: UITextField!
    
    @IBOutlet weak var lastOL: UITextField!
    
    @IBOutlet weak var ageOL: UITextField!
    
    @IBOutlet weak var outputOL: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    
    @IBAction func submitBtnClicked(_ sender: Any) {
        
        //Read the values
        
        let firstName = firstOL.text!;
        let lastOL = lastOL.text!;
        let ageOL = ageOL.text!;
        
        var str = "Hello my name is \(firstName) \(lastOL) and my age is \(ageOL)"
        
        outputOL.text = str
    }
    
    


}

