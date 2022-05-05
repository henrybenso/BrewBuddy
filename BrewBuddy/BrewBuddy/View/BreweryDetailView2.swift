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

            VStack(alignment: .leading) {
                HStack {
                    Text(result.state ?? "null")
                }
                .font(.subheadline)
                .foregroundColor(.secondary)

                Divider()

                Text("About \(result.name)")
                    .font(.title2)
                
                Text("\(result.brewery_type)")
            }
            .padding()
        }
        .navigationTitle(result.name)
        .navigationBarTitleDisplayMode(.inline)
    }
}

// Strings in Preview may be random. Just filled in with words so no errors pop up.
struct BreweryDetailView2_Previews: PreviewProvider {
    static var previews: some View {
        BreweryDetailView2(result: Brewery2(id: "banjo-brewing-fayetteville", name: "Banjo Brewing", brewery_type: "planning", street: "", address_2: "", address_3: "", city: "", state: "", county_province: "", postal_code: "", country: "test"))
    }
}
