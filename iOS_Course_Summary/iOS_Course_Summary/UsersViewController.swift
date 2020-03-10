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
    
    // outlet from the tableView, used to populate it ...
    @IBOutlet weak var tableView: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        
        tableView.delegate = self
        tableView.dataSource = self
    }
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return sectionNames.count
    }
    
    func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
        return sectionNames[section]
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return userNames.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "aCustomCell") as! UserTableViewCell
        cell.configure(name: userNames[indexPath.row])
        return cell
    }

}
