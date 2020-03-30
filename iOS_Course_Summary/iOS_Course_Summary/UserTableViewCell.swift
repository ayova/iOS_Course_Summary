//
//  UserTableViewCell.swift
//  iOS_Course_Summary
//
//  Created by ADMIN on 07/03/2020.
//  Copyright © 2020 ADMIN. All rights reserved.
//

import UIKit

class UserTableViewCell: UITableViewCell {

    @IBOutlet weak var nameLabel: UILabel!
    @IBOutlet weak var localNameLabel: UILabel!
    @IBOutlet weak var dateLabel: UILabel!
    
    func configure(name: String, localName: String, date: String){
        nameLabel.text = name
        localNameLabel.text = localName
        dateLabel.text = date
    }

}
