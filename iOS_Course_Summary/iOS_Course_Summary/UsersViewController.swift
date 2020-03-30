//
//  UsersViewController.swift
//  iOS_Course_Summary
//
//  Created by ADMIN on 07/03/2020.
//  Copyright © 2020 ADMIN. All rights reserved.
//

import UIKit

class UsersViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    
    let sectionNames = ["Users", "Holidays"]
    let userNames = ["Agu","Ayova","Leodan"]
    var listOfHolidays = [Holiday](){
        didSet{
            DispatchQueue.main.async {
                self.tableView.reloadData() //reload the data displayed once loaded
            }
        }
    }
    
    // outlet from the tableView, used to populate it ...
    @IBOutlet weak var tableView: UITableView!
    
    override func viewWillAppear(_ animated: Bool) {
        let holidayRequest = HolidayRequest(year: 2020, countryCode: "ES")
        holidayRequest.getHolidays{[weak self] result in
            switch result {
            case .failure(let error):
                print(error)
            case .success(let holidays):
                self?.listOfHolidays = holidays
            }
        }
    }
    
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
        let sectionName = sectionNames[section]
        switch sectionName {
        case "Users":
            return userNames.count
        case "Holidays":
            return listOfHolidays.count
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
            cell.configure(name: userNames[indexPath.row], localName: "", date: "")
        case "Holidays":
            cell.configure(name: listOfHolidays[indexPath.row].name, localName: listOfHolidays[indexPath.row].localName, date: listOfHolidays[indexPath.row].date)
        default:
            break
        }
        
        return cell
    }
}
