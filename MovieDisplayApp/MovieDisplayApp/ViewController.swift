//
//  ViewController.swift
//  MovieDisplayApp
//
//  Created by Varun Rachakatla on 26/02/24.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var imageViewOL: UIImageView!
    
    @IBOutlet weak var movieNameOL: UILabel!
    
    @IBOutlet weak var movieGenreOL: UILabel!
    
    @IBOutlet weak var movieLAngOL: UILabel!
    
    @IBOutlet weak var movieReleaseOL: UILabel!
    
    
    @IBOutlet weak var prevButtonOL: UIButton!
    

    @IBOutlet weak var nextButtonOL: UIButton!
    
    
    var movieIndex: Int = 0;
    
    let movieList:[(movieName: String,movieGenre: String,movieDirector:String, movieRelease: String, movieImage: String)] = [(movieName: "Baahubali 2: The Conclusion",movieGenre: "Action/Fantacy",movieDirector:"SS Rajamouli", movieRelease: "28 April 2017", movieImage: "Bahubali"),(movieName: "Dune: Part Two",movieGenre: "Sci-fi/Adventure",movieDirector:"Denis Villeneuve", movieRelease: "February 25, 2024",movieImage: "Dune"),(movieName: "Thanksgiving",movieGenre: "Horror/Mystery ",movieDirector:"Eli Roth", movieRelease: "November 17, 2023",movieImage: "Thanksgiving")]
    
    

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        prevButtonOL.isEnabled = false;
        changeMovie();
    }
    
    
    @IBAction func prevButtonClicked(_ sender: Any) {
        movieIndex -= 1;
        changeMovie();
    }
    
    @IBAction func nextButtonClicked(_ sender: Any) {
        movieIndex += 1;
        changeMovie();
    }
    
    //helper func to update movielist
    func changeMovie(){
        prevButtonOL.isEnabled = !(movieIndex == 0);
        nextButtonOL.isEnabled = !(movieIndex == movieList.count - 1);
        imageViewOL.image = UIImage(named: movieList[movieIndex].movieImage);
        
        movieNameOL.text = String(movieList[movieIndex].movieName);
        
        movieGenreOL.text = String(movieList[movieIndex].movieGenre);
        
        movieLAngOL.text = String(movieList[movieIndex].movieDirector);
        
        movieReleaseOL.text = String(movieList[movieIndex].movieRelease)
    }
    

}

