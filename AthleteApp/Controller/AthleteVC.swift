//
//  AthleteVC.swift
//  AthleteApp
//

import UIKit

class AthleteVC: UITableViewController {
    
    //MARK:- Properties
    //Part One
    //var athletes: [Athlete] = Athlete.getSortedArray()
    
    //Part Two
    var athletes: [Athlete] = Athlete.getSortedDateArray()
    var toggle = false
    
    //MARK:- Outlet
    @IBOutlet var athleteTableview: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    //MARK:- Actions
    /// Toggle button helps to sorted the data by date and name.
    ///
    /// - Parameter value: Any
    /// - Returns: nil
    @IBAction func btnFilterAction(_ sender: Any) {
        toggle = !toggle
        athletes = toggle ? Athlete.getFilterbyLastname() : Athlete.getSortedDateArray()
        athleteTableview.reloadData()
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
