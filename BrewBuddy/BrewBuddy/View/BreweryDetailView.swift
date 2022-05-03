//
//  BreweryDetailView.swift
//  BrewBuddy
//
//  Created by henry benso on 4/25/22.
//

import SwiftUI

struct BreweryDetailView: View {
    
    var result: Brewery
     
    var body: some View {
        ScrollView {

            VStack(alignment: .leading) {
                HStack {
                    Text(result.state)
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
struct BreweryDetailView_Previews: PreviewProvider {
    static var previews: some View {
        BreweryDetailView(result: Brewery(id: "banjo-brewing-fayetteville", name: "Banjo Brewing", brewery_type: "planning", street: "", address_2: "", address_3: "", city: "", state: "", county_province: "", postal_code: "", country: "test"))
    }
}
