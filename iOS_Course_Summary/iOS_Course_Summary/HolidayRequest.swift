//
//  HolidayRequest.swift
//  iOS_Course_Summary
//
//  Created by ADMIN on 29/03/2020.
//  Copyright © 2020 ADMIN. All rights reserved.
//

// API link - https://date.nager.at/api/v2/PublicHolidays/{Year}/{CountryCode}

import Foundation
enum HolidayRequestError: Error {
    case NoDataAvailable
    case DataCantBeAccessed
}

struct HolidayRequest: Decodable {
    let ApiURL: URL
    
    init (year: Int,countryCode: String) {
        let apiString = "https://date.nager.at/api/v2/PublicHolidays/\(year)/\(countryCode)"
        ApiURL = URL(string: apiString)!
    }
    
    func getHolidays(completion: @escaping(Result<[Holiday], Error>) -> Void) {
        let request = URLSession.shared.dataTask(with: ApiURL) { data,_,_ in
            guard let jsonData = data else {
                completion(.failure(HolidayRequestError.NoDataAvailable))
                return
            }
            do {
                let decoder = JSONDecoder()
                let json = try decoder.decode(Holidays.self, from: jsonData)
                completion(.success(json))
            } catch {
                completion(.failure(HolidayRequestError.DataCantBeAccessed))
            }
        }
        request.resume()
    }
}
