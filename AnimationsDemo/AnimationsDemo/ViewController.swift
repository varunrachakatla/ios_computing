//
//  ViewController.swift
//  AnimationsDemo
//
//  Created by Rachakatla,Varunraj on 3/7/24.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var imageViewOL: UIImageView!
    
    @IBOutlet weak var showButtonOL: UIButton!
    
    @IBOutlet weak var happyButtonOL: UIButton!
    
    @IBOutlet weak var sadButtonOL: UIButton!
    
    @IBOutlet weak var angryButtonOL: UIButton!
    
    @IBOutlet weak var shakeMeButtonOL: UIButton!
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    override func viewDidAppear(_ animated: Bool) {
        //Keep all the components except show me outside of the view
        alignItems(view.frame.width);
        
        
    }
    
    
    
    @IBAction func showButtonPressed(_ sender: Any) {
        //Move all Components from  outside of the view to center of the view
        UIView.animate(withDuration: 1, animations: {
            self.alignItems(self.view.center.x)
        })
        
        //disable show button
        
    }
    
    @IBAction func happyButtonClicked(_ sender: Any) {
        
        updateAndAnimate("happy")
    }
    
    @IBAction func sadButtonClicked(_ sender: Any) {
        updateAndAnimate("sad")
    }
    
    @IBAction func angryButtonClicked(_ sender: Any) {
        updateAndAnimate("angry")
    }
    
    
    @IBAction func shakeMeButtonClicked(_ sender: Any) {
        
        var width = imageViewOL.frame.width;
        
        width += 40;
        
        var height = imageViewOL.frame.height;
        
        height += 40;
        
        var x = imageViewOL.frame.origin.x ;
        x -= 20;
        
        var y = imageViewOL.frame.origin.y;
        y -= 20;
        
        let largerFrame = CGRect(x: x, y: y, width:  width,height: height)
        
        UIView.animate(withDuration: 1, delay: 0, usingSpringWithDamping: 0.4, initialSpringVelocity: 50, animations: {
            self.imageViewOL.frame = largerFrame
        })
        
        
    }
    

    func updateAndAnimate(_ image:String){
        //Making the current image as opaque (alpha = 0)
        UIView.animate(withDuration: 1, animations: { self.imageViewOL.alpha = 0
        })
        // Assign new image an animation and alpha to 1
        
        UIView.animate(withDuration: 1, delay: 0.5, animations: {
            self.imageViewOL.alpha = 0;
            self.imageViewOL.alpha = 1;
            self.imageViewOL.image = UIImage(named: image);
        })
    }
    
    func alignItems(_ position: Double){
        imageViewOL.frame.origin.x = position;
        happyButtonOL.frame.origin.x = position;
        sadButtonOL.frame.origin.x = position;
        angryButtonOL.frame.origin.x = position;
        shakeMeButtonOL.frame.origin.x = position;
    }
}

