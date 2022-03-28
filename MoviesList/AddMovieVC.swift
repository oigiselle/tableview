//
//  AddMovieVC.swift
//  MoviesList
//
//  Created by Giselle Salvador on 2022-03-23.
//

import UIKit



class AddMovieVC: UIViewController {
    
    static var identifier = String(describing: AddMovieVC.self)
    
    var movies: [String] = []
    
    @IBOutlet weak var movieAdded: UILabel!
    @IBOutlet weak var movieTextField: UITextField!
    
    
    

    @IBAction func addMovie(_ sender: Any) {
        
        if var movieName = movieTextField.text{
           
        
        let movie = MoviesStorage()
            movie.save(movie: movieName)
           
            if movieAdded.text == "Your movie has been successfully added!" {
                movieAdded.text = "You can add only one movie at time. Only the last one has been added. Please see your movie listed and click to add a new one."
            } else {
                movieAdded.text = "Your movie has been successfully added!"
            }
            
            movieName = ""
            movieTextField.text = ""
            
          
        }
    }

    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    

    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        view.endEditing(true)
    }
}
