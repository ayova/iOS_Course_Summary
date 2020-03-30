//
//  Holiday.swift
//  iOS_Course_Summary
//
//  Created by ADMIN on 29/03/2020.
//  Copyright © 2020 ADMIN. All rights reserved.
//



import Foundation
struct Holiday: Codable {
    let date, localName, name: String
}

typealias Holidays = [Holiday]
