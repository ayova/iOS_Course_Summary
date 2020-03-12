//
//  UsersViewController.swift
//  iOS_Course_Summary
//
//  Created by ADMIN on 07/03/2020.
//  Copyright © 2020 ADMIN. All rights reserved.
//

import UIKit

class UsersViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {

    let sectionNames = ["Users", "Friends"]
    let userNames = ["Agu","Ayova","Leodan"]
    let friendNames = ["Pitu","Siro","Axelion","Morrowind","Coco","Pachán"]

    // outlet from the tableView, used to populate it ...
    @IBOutlet weak var tableView: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        tableView.delegate = self
        tableView.dataSource = self
        let publicHolidays = PublicHolidays()
        publicHolidays.retrieveAPIData(year: 2020, countryCode: "ES")
    }
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return sectionNames.count
    }
    
    func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
        return sectionNames[section]
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        let sectionName = sectionNames[section]
        switch sectionName {
        case "Users":
            return userNames.count
        case "Friends":
            return friendNames.count
        default:
            return 0
        }
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        //get the cell
        let cell = tableView.dequeueReusableCell(withIdentifier: "aCustomCell") as! UserTableViewCell
        
        let sectionName = sectionNames[indexPath.section]
        switch sectionName {
        case "Users":
            cell.configure(name: userNames[indexPath.row])
        case "Friends":
            cell.configure(name: friendNames[indexPath.row])
        default:
            break
        }
        //get the cell
        //let cell = tableView.dequeueReusableCell(withIdentifier: "aCustomCell") as! UserTableViewCell
        //prepare / populate cell
        //cell.configure(name: userNames[indexPath.row])
        //return populated cell
        return cell
    }

}
