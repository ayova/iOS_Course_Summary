//
//  APIConnection.swift
//  iOS_Course_Summary
//
//  Created by ADMIN on 10/03/2020.
//  Copyright © 2020 ADMIN. All rights reserved.
//

import Foundation
struct PublicHolidays {
    let APILink = "https://date.nager.at/api/v2/PublicHolidays"
    
    func retrieveAPIData(year: Int, countryCode: String) {
        var urlRequest = URLRequest(url: URL(string: "\(APILink)/\(year)/\(countryCode)")!)
        
        //api link print, see requested URL
        print(urlRequest)
        print("-------------------------------------")
        
        urlRequest.httpMethod = "get"
        URLSession.shared.dataTask(with: urlRequest) { (data, httpUrlResponse, error) in
            if(data != nil && data?.count != 0){
                if let data = data {
                    //guard let response = String(data: data, encoding: .utf8) else { return }
                    let response = try? JSONSerialization.jsonObject(with: data, options: [])
                    debugPrint(response!)
                }
            }
        }.resume()
    }
    
}
