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
    []
       
       func save(movie: String) {
           movies = listmovies()
           movies.append(movie)
           UserDefaults.standard.setValue(movies, forKey: keymovie)
       }
       
       func listmovies() -> Array<String> {
           if let listMovie = UserDefaults.standard.object(forKey: keymovie) {
               return listMovie as! Array<String>
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

