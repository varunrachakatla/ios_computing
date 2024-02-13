//
//  ViewController.swift
//  InitialsApp
//
//  Created by Rachakatla,Varunraj on 2/6/24.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var firstNameOL: UITextField!
    
    @IBOutlet weak var lastNameOL: UITextField!
    
    
    @IBOutlet weak var outputOL: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func getInitials(_ sender: Any) {
        var firstName = firstNameOL.text!
        var lastName = lastNameOL.text!
        var splitFirstName = firstName.split(separator: " ");
        var newString = ""
        for index in 2 {
            
        }
        var labelText = "Your Initials: \(newString).\(lastName[lastName.startIndex])."
        
        outputOL.text = labelText
    }
    
}

