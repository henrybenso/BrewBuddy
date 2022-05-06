//
//  BreweryDetailView.swift
//  BrewBuddy
//
//  Created by henry benso on 4/25/22.
//

import SwiftUI

struct BreweryDetailView: View {
    var result: Brewery
     // add redirect to map

    var body: some View {
        ScrollView {
            VStack(alignment: .center) {
                Text("About \(result.name)")
                    .font(.title2)
                Text("\(result.brewery_type)")
            }
            .padding()

            Divider()

            VStack(alignment: .leading) {
                Group {
                    Text("Address:")
                        .font(.title3)
                    Spacer()

                    Text("\(result.street ?? "null") ") + Text("\(result.address_2 ?? "null") ") + Text("\(result.address_3 ?? "null") ")
                    Text("\(result.city ?? "null"), ") + Text(result.county_province ?? "null")
                    Text("\(result.state ?? "null") ") + Text(result.postal_code ?? "null")
                    Text(result.country)
                }
                
                Divider()
                
                Text("Contact: ")
                    .font(.title3)
                
                Spacer()
                
                Text("Phone: \(result.phone ?? "null")")
                Text("Website: \(result.website_url ?? "null")")
            }
            .padding()
            Spacer()
        }
    }

}

// Strings in Preview may be random. Just filled in with words so no errors pop up.
struct BreweryDetailView_Previews: PreviewProvider {
    static var previews: some View {
        BreweryDetailView(result: Brewery(id: "banjo-brewing-fayetteville", name: "Banjo Brewing", brewery_type: "planning", street: "banana road", address_2: "addy 2", address_3: "addy 3", city: "city", state: "state", county_province: "county", postal_code: "zip", country: "country"))
    }
}
