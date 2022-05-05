//
//  BreweryListRow.swift
//  BrewBuddy
//
//  Created by henry benso on 4/25/22.
//

import SwiftUI

struct BreweryListRow2: View {
    var result: Brewery2

    var body: some View {
        HStack {
            Text(result.name)

            Spacer()
            
            Text(result.brewery_type)
                .font(.system(size: 12))
                .foregroundColor(Color(UIColor.darkGray))
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
struct BreweryListRow2_Previews: PreviewProvider {
    static var previews: some View {
        BreweryListRow2(result: Brewery2(id: "banjo-brewing-fayetteville", name: "Banjo Brewing", brewery_type: "planning", street: "", address_2: "", address_3: "", city: "", state: "", county_province: "", postal_code: "", country: "test test"))
    }
}
