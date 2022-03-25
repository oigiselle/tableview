//
//  AddMovieVC.swift
//  MoviesList
//
//  Created by Giselle Salvador on 2022-03-23.
//

import UIKit



class AddMovieVC: UIViewController {
    
    static var identifier = String(describing: AddMovieVC.self)
    
    var movies: [String] =
    
    ["Eternals"
    , "Dune"
    ,"No Time To Die"
    ,"Last Night in Soho"
    ,"Ron’s Done Wrong"
    ,"Halloween Kills"
    ,"Venom"
    ,"Antlers"
    ,"The Addams Family 2"]
    
    @IBOutlet weak var movieAdded: UILabel!
    @IBOutlet weak var movieTextField: UITextField!
    
    
    

    @IBAction func addMovie(_ sender: Any) {
        
        if var movieName = movieTextField.text{
        
        let movie = MoviesStorage()
            movie.save(movie: movieName)
        
            movieName = ""
            movieTextField.text = ""
            movieAdded.text = "Your movie has been successfully added!"
            let data = movie.listmovies()
            print (data)
         
          
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
