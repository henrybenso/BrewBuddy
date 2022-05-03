//
//  BreweryListRow.swift
//  BrewBuddy
//
//  Created by henry benso on 4/25/22.
//

import SwiftUI

struct BreweryListRow: View {
    var result: Brewery

    var body: some View {
        HStack {
            Text(result.name)

            Spacer()
            
            Text(result.brewery_type)
            /*
            if brewery.isFavorite {
                Image(systemName: "star.fill")
                    .foregroundColor(.yellow)
            }
             */
        }
    }
}

// Strings in Preview may be random. Just filled in with words so no errors pop up.
struct BreweryListRow_Previews: PreviewProvider {
    static var previews: some View {
        BreweryListRow(result: Brewery(id: "banjo-brewing-fayetteville", name: "Banjo Brewing", brewery_type: "planning", street: "", address_2: "", address_3: "", city: "", state: "", county_province: "", postal_code: "", country: "test test"))
    }
}
