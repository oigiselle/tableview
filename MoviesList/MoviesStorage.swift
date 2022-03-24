//
//  MoviesStorage.swift
//  MoviesList
//
//  Created by Giselle Salvador on 2022-03-23.
//

import UIKit

class MoviesStorage {
    

    let keymovie = "movie"
    
      
    var movies: [String] =
    ["Eternals"
    , "Dune"
    ,"No Time To Die"
    ,"Last Night in Soho"
    ,"Ron’s Done Wrong"
    ,"Halloween Kills"
    ,"Venom"
    ,"Antlers"
    ,"The Addams Family 2"
    ]
       
       func save(movie: String) {
           movies = listmovies()
           movies.append(movie)
           UserDefaults.standard.setValue(movies, forKey: keymovie)
       }
       
       func listmovies() -> Array<String> {
           if let data = UserDefaults.standard.object(forKey: keymovie) {
               return data as! Array<String>
           }
           return []
       }
       
       func delete(index: Int) {
           movies = listmovies()
           movies.remove(at: index)
           print(movies)
           UserDefaults.standard.setValue(movies, forKey: keymovie)
       }
}

