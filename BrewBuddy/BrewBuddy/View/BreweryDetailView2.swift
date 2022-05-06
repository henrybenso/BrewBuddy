//
//  BreweryDetailView2.swift
//  BrewBuddy
//
//  Created by henry benso on 5/5/22.
//

import SwiftUI

struct BreweryDetailView2: View {
    
    var result: Brewery2
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

                    Text("\(result.street ?? "null") ") + Text("\(result.address_2 ?? "") ") + Text("\(result.address_3 ?? "") ")
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
struct BreweryDetailView2_Previews: PreviewProvider {
    static var previews: some View {
        BreweryDetailView2(result: Brewery2(id: "banjo-brewing-fayetteville", name: "Banjo Brewing", brewery_type: "planning", street: "", address_2: "", address_3: "", city: "", state: "", county_province: "", postal_code: "", country: "test"))
    }
}
