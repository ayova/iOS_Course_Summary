//
//  UserTableViewCell.swift
//  iOS_Course_Summary
//
//  Created by ADMIN on 07/03/2020.
//  Copyright © 2020 ADMIN. All rights reserved.
//

import UIKit

class UserTableViewCell: UITableViewCell {

    @IBOutlet weak var userNameLabel: UILabel!
    
    func configure(name: String){
        userNameLabel.text = name
    }

}
