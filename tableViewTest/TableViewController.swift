//
//  TableViewController.swift
//  tableViewTest
//
//  Created by Henry Pearson on 03/02/2018.
//  Copyright © 2018 Henry Pearson. All rights reserved.
//

import UIKit


class TableViewController: UITableViewController {

    
    var searchResults = [String]()
    var searcher = UISearchController()
    
    var selectedIndex: Int = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Uncomment the following line to preserve selection between presentations
        // self.clearsSelectionOnViewWillAppear = false

        // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
        // self.navigationItem.rightBarButtonItem = self.editButtonItem
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    // MARK: - Table view data source

    // return the number of sections
    override func numberOfSections(in tableView: UITableView) -> Int {
        
        return 1
    }

    // set the number of rows to the number of countries
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        
        return countries.count
    }

    // create the cell and add correct data to the cell
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "myCell", for: indexPath) as! TableViewCell
        cell.imageOutlet.image = UIImage(named: countries[indexPath.row][1])
        cell.nameOutlet.text = countries[indexPath.row][0]
        // Configure the cell...

        return cell
    }
    

    // send of the selected index of the row
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        selectedIndex = indexPath.row
        performSegue(withIdentifier: "mySegue", sender: nil)
    }
    
    // set the destination right before the segue
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if let destination = segue.destination as? InfoOutputViewController {
            destination.index = selectedIndex
        }
    }
}
