//
//  MoviesStorage.swift
//  MoviesList
//
//  Created by Giselle Salvador on 2022-03-23.
//

import UIKit

class MoviesStorage {
    
    var moviesArr: [String] = [
        "Eternals"
        , "Dune"
        ,"No Time To Die"
        ,"Last Night in Soho"
        ,"Ron’s Done Wrong"
        ,"Halloween Kills","Venom","Antlers"
        , "The Addams Family 2"
    ]
    
    let key = "list"
    
    
    
    
    
    func save(movie: String){
        
        //call previous information
        moviesArr = list()
        
        // save movie
        moviesArr.append(movie)
        UserDefaults.standard.set(movie, forKey: key)
        
        
        
        print(moviesArr)
        
    }
    
    func list() -> Array<String>{
        
        let list = UserDefaults.standard.object(forKey: key)
        
        return list as! Array<String>
        
    }
    
}
