//
//  BreweryAPI.swift
//  BrewBuddy
//
//  Created by henry benso on 4/25/22.
//

import Foundation

let OPENBREWERY_API_ROOT = "https://api.openbrewerydb.org"
let BREWERY_ENDPOINT = "\(OPENBREWERY_API_ROOT)/breweries" // https://api.openbrewerydb.org/breweries/search?query=dog

enum BREWERYAPIError: Error {
    case unsuccessfulDecode
}


//COMMENTED OUT FOR PREVIEW PURPOSES
/*
func getListBreweries() async throws -> [Brewery] {
    guard let url = URL(string: "\(BREWERY_ENDPOINT)") else {
        fatalError("getListBreweries request error")
    }
    
    do {
        let (data, _) = try await URLSession.shared.data(from: url)
        return try JSONDecoder().decode([Brewery].self, from: data)
    } catch {
        print(error)
        fatalError("error")
    }
}


func getListBreweriesByDistance(longitude: String, latitude: String) async throws -> [Brewery] {
    guard let url = URL(string: "\(BREWERY_ENDPOINT)") else {
        fatalError("getListBreweriesByDistance request error")
    }
    
    do {
        let (data, _)  = try await URLSession.shared.data(from: url)
        return try JSONDecoder().decode([Brewery].self, from: data)
    } catch {
        print(error)
        fatalError("error")
    }
    
}
*/
