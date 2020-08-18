//
//  AthleteVC.swift
//  AthleteApp
//

import UIKit

class AthleteVC: UITableViewController {
    
    //MARK:- Properties
    var athletes: [Athlete] = Athlete.getSortedArray()
    
    
    //MARK:- Outlet
    @IBOutlet var athleteTableview: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }

    
    // MARK: - Table view data source
    /// Tableview Datasource methods help us to create all tableview cell with the avialable data.
    ///
    /// - Parameter value: nil
    /// - Returns: Tableview cell
    
    override func numberOfSections(in tableView: UITableView) -> Int {
        // #warning Incomplete implementation, return the number of sections
        return 1
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return athletes.count
    }

    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "reuseIdentifier", for: indexPath)
        cell.textLabel?.text = "\(athletes[indexPath.row].firstName) \(athletes[indexPath.row].lastName)"
        cell.detailTextLabel?.text = "Position: \(athletes[indexPath.row].position)"
        return cell
    }

}
