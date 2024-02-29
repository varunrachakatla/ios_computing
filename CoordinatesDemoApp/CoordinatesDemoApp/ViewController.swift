//
//  ViewController.swift
//  CoordinatesDemoApp
//
//  Created by Rachakatla,Varunraj on 2/29/24.
//

import UIKit

class ViewController: UIViewController {
    
    
    @IBOutlet weak var imageViewOL: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        
        let minX = imageViewOL.frame.minX;
        let minY = imageViewOL.frame.minY;
        
        print("(\(minX),\(minY))");
        
        let maxX = imageViewOL.frame.maxX;
        let maxY = imageViewOL.frame.maxY;
        
        print("(\(maxX),\(maxY))");
        
        
        print("(\((minX+minX)/2),\((maxY+maxX)/2))");
        
        //move the image to upper left corner
        
        imageViewOL.frame.origin.x = 0;
        imageViewOL.frame.origin.y = 0;

        //moving the image to upper right corner
        
        imageViewOL.frame.origin.x = 330;
        imageViewOL.frame.origin.y = 0;
        
        // moving the imae to left bottom corner
     
        imageViewOL.frame.origin.x = 0;
        imageViewOL.frame.origin.y = 832;
        
        // moving the imae to right bottom corner
        imageViewOL.frame.origin.x = 330;
        imageViewOL.frame.origin.y = 832;
        
        //center of the screen
        imageViewOL.frame.origin.x = 165;
        imageViewOL.frame.origin.y = 416;
        
        
        
        
    }


}

