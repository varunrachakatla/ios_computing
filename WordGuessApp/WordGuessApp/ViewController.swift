//
//  ViewController.swift
//  WordGuessApp
//
//  Created by Rachakatla,Varunraj on 2/27/24.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var wordLableOL: UILabel!
    
    @IBOutlet weak var hintLAbelOL: UILabel!
    
    @IBOutlet weak var textFieldOL: UITextField!
    
    
    @IBOutlet weak var checkOL: UIButton!
    
    
    @IBOutlet weak var statusLAbelOL: UILabel!
    
    
    @IBOutlet weak var playAgainOL: UIButton!
    
    var wordsList = [(word:"SWIFT",hint: "Programming Language"),(word:"DOG",hint: "Animal"),(word:"CYCLE",hint: "Two Wheeler"),(word:"MACBOOK",hint: "Apple Device")]
    
    var count = 0;
    var lettersGuessed = "";
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        //disbale the check again button
        checkOL.isEnabled = false;
        
        //empty the word label
        wordLableOL.text = "";
        
        //update the default word label
        updateWordLabel();
        
        //update hint
        updateHint();
        
        //update status label text
        updateStatusLabel("");
        
    }
    
    @IBAction func onChange(_ sender: Any) {
        
        var enteredText = textFieldOL.text!;
        enteredText = String(enteredText.last ?? " ").trimmingCharacters(in: .whitespaces)
        
        textFieldOL.text = enteredText;
        
        if (enteredText.isEmpty){
            checkOL.isEnabled = false
        }
        else{
            checkOL.isEnabled = true
        }
    }
    
    
    @IBAction func checkButtonClicked(_ sender: Any) {
        
        var letter = textFieldOL.text!
        
        // append to letters guessed
        
        lettersGuessed.append(letter);
        
        var revealWord = "";
        
        for lett in wordsList[count].word{
            if lettersGuessed.contains(lett){
                revealWord += "\(lett)"
            }
            else{
                revealWord += " _"
            }
        }
        
        wordLableOL.text = revealWord;
        
        textFieldOL.text = "";
        
        if wordLableOL.text!.contains("_") == false {
            playAgainOL.isHidden = false;
            checkOL.isEnabled = false;
        }
        
        checkOL.isEnabled = false;
        
        
    }
    
    @IBAction func playAgainClicked(_ sender: Any) {
        
        //Reset the button to disable initially.
        playAgainOL.isHidden = true
        //clear the label
        lettersGuessed = ""
        count += 1
        //if count reaches the end of the array (all the words are guessed sucessfully), then print Congratualtions in the status label.
        if count == wordsList.count{
            
            statusLAbelOL.text = "Congruations! You are done with the game!"
            //clearing the labels.
            wordLableOL.text = ""
            hintLAbelOL.text = ""
        }
        else{

            //fetch the hint related to the word
            hintLAbelOL.text = "Hint: \(wordsList[count].hint)"
            
            //Enabling the check button.
            checkOL.isEnabled = false
            
            textFieldOL.text = "";
            
            wordLableOL.text = ""
            updateWordLabel()
        }
    }
    
    func updateWordLabel(){
        for word in wordsList[count].word{
            wordLableOL.text! += " _"
        }
    }
    
    func updateHint(){
        hintLAbelOL.text = "Hint: \(wordsList[count].hint)"
    }
    
    func updateStatusLabel(_ labelText: String){
        statusLAbelOL.text = labelText;
    }

}

