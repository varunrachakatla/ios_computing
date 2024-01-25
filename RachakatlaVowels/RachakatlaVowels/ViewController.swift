//
//  ViewController.swift
//  RachakatlaVowels
//
//  Created by Rachakatla,Varunraj on 1/25/24.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var inputOL: UITextField!
    
    @IBOutlet weak var labelOL: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    
    @IBAction func checkForVowelsClkd(_ sender: Any) {
        
        var inputValue = inputOL.text!;
        
        if(inputValue.count == 0){
            
            print("Please enter some text")
        }
        else{
            
            var collec = inputValue.split(separator: "")
            
            var flag = false;
            
            for element in collec{
                if(element == "a" || element == "e" || element == "i" || element == "o" || element == "u"){
                    flag = true;
                }
            }
            
            if(flag){
                print("The text contains vowels")
                
                labelOL.text = "The text \(inputValue) contains vowels"
                
            }
            else{
                print("The text does not contains vowels")
                
                labelOL.text = "The text does not contains vowels"
            }
        }
//        if(inputValue.contains("a") || inputValue.contains("e") || inputValue.contains("i") || inputValue.contains("o") || inputValue.contains("u")){
//
//            print("Please enter some text")
//        }

        
    }
    

}

