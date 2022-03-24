//
//  AddMovieVC.swift
//  MoviesList
//
//  Created by Giselle Salvador on 2022-03-23.
//

import UIKit

class AddMovieVC: UIViewController {
    
    @IBOutlet weak var movieAdded: UILabel!
    @IBOutlet weak var movieTextField: UITextField!
    
    
    

    @IBAction func addMovie(_ sender: Any) {
        
        if let movieName = movieTextField.text{
        
        let movie = MoviesStorage()
            movie.save(movie: movieName)
        movieTextField.text = ""
        movieAdded.text = "Your movie has been successfully added!"
          
         
          
        }
    }

    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
