//
//  MoviesStorage.swift
//  MoviesList
//
//  Created by Giselle Salvador on 2022-03-23.
//

import UIKit

class MoviesStorage {
    

    let keymovie = "movie"
    
    let listOfMoviesArr = MovieListMainTVC()
    
      
    var movies: [String] = ["Eternals"
                            , "Dune"
                            ,"No Time To Die"
                            ,"Last Night in Soho"
                            ,"Ron’s Done Wrong"
                            ,"Halloween Kills"
                            ,"Venom"
                            ,"Antlers"
                            ,"The Addams Family 2"]
       
       func save(movie: String) {
           
          
           movies.append(movie)
           UserDefaults.standard.setValue(movies, forKey: keymovie)
       }
       
       func listmovies() -> Array<String> {
           print("listmovies")
           if let listMovie = UserDefaults.standard.object(forKey: keymovie) {
               
           return listMovie as! Array<String>
               
           }else{
               return listOfMoviesArr.movies
           }

       }


}

