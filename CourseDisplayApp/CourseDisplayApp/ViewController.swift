//
//  ViewController.swift
//  CourseDisplayApp
//
//  Created by Rachakatla,Varunraj on 2/22/24.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var imageViewOL: UIImageView!
    
    @IBOutlet weak var crsNumberOL: UILabel!
    
    @IBOutlet weak var crsTitleOL: UILabel!
    
    @IBOutlet weak var crsSemOL: UILabel!
    
    
    @IBOutlet weak var prevButtonOL: UIButton!
    
    @IBOutlet weak var nextButtonOL: UIButton!
    
    var courseIndex: Int = 0;
    
    let courses:[(courseNum: Int,courseTitle: String,courseSem:String, img: String)] = [(courseNum: 44555,courseTitle: "Network Security",courseSem:"Fall", img: "img01"),(courseNum: 44666,courseTitle: "IOS",courseSem:"Spring", img: "img02"),(courseNum: 44556,courseTitle: "Data Streaming",courseSem:"Summer", img: "img03")]
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        prevButtonOL.isEnabled = false;
        changeCourse();
    }
    
    
    
    
    @IBAction func prevButtonClicked(_ sender: Any) {
        courseIndex -= 1;
        changeCourse();
    }
    
    @IBAction func nextButtonClicked(_ sender: Any) {
        courseIndex += 1;
        changeCourse();
        
    }
    
    //helper func to update course 
    func changeCourse(){
        prevButtonOL.isEnabled = !(courseIndex == 0);
        nextButtonOL.isEnabled = !(courseIndex == courses.count - 1);
        imageViewOL.image = UIImage(named: courses[courseIndex].img);
        
        crsNumberOL.text = String(courses[courseIndex].courseNum);
        
        crsTitleOL.text = String(courses[courseIndex].courseTitle);
        
        crsSemOL.text = String(courses[courseIndex].courseSem);
    }
    

}

