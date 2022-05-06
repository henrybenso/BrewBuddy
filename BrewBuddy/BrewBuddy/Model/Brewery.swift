//
//  Brewery.swift
//  BrewBuddy
//
//  Created by henry benso on 4/25/22.
//

import Foundation
import CoreLocation

struct Brewery: Hashable, Codable, Identifiable {
    var id: String
    var name: String
    var brewery_type: String
    var street: String?
    var address_2: String?
    var address_3: String?
    var city: String?
    var state: String?
    var county_province: String?
    var postal_code: String?
    var country: String
    var phone: String?
    var website_url: String?
     
    //var isFavorite: Bool
}

struct BreweryResults: Hashable, Codable {
    var results: [Brewery]
}


