//
//  MovieListMainTVC.swift
//  MoviesList
//
//  Created by Giselle Salvador on 2022-03-23.
//

import UIKit

class MovieListMainTVC: UITableViewController{
    
    @IBOutlet var table: UITableView!
    
   
    
    var movies: [String] = ["Eternals"
                            , "Dune"
                            ,"No Time To Die"
                            ,"Last Night in Soho"
                            ,"Ron’s Done Wrong"
                            ,"Halloween Kills"
                            ,"Venom"
                            ,"Antlers"
                            ,"The Addams Family 2"]

    
    override func viewDidLoad() {
        tableView.reloadData()

        table.delegate = self
        table.dataSource = self
        
       
    }

    override func viewDidAppear(_ animated: Bool) {
        updateList()
        super.viewDidLoad()

        if let bundleID = Bundle.main.bundleIdentifier {
        UserDefaults.standard.removePersistentDomain(forName: bundleID) }
    }
    
    
    func updateList(){
        let newMovie = MoviesStorage()
        movies += newMovie.listmovies()
        let uniqueList = Array(Set(movies))
        movies = uniqueList
        movies = Array(movies)
        tableView.reloadData()
        
        
    }
    
    override func numberOfSections(in tableView: UITableView) -> Int {
       
        return 1
    }
    
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
       
        return movies.count
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "movies", for: indexPath)

        cell.textLabel?.text = movies[indexPath.row]
        cell.textLabel?.font = UIFont(name: "Arial", size: 22)
        

        return cell
    }
    
    
    
    override func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCell.EditingStyle, forRowAt indexPath: IndexPath) {
        if editingStyle == UITableViewCell.EditingStyle.delete{
            tableView.beginUpdates()
            movies.remove(at: indexPath.row)
            tableView.deleteRows(at: [indexPath], with: .none)
            tableView.endUpdates()
        }
       
      
    }
    
    override func tableView(_ tableView: UITableView, canMoveRowAt indexPath: IndexPath) -> Bool {
        return true
    
    }
    
    override func tableView(_ tableView: UITableView, moveRowAt sourceIndexPath: IndexPath, to destinationIndexPath: IndexPath) {
        
        movies.swapAt(sourceIndexPath.row, destinationIndexPath.row)
        
    }
    
    
    
    @IBAction func didTapSort(){
        if table.isEditing{
            table.isEditing = false
        }else {
            table.isEditing = true
        }
    }

    

    
  
}
