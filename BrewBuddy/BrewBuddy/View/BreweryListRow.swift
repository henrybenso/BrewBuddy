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
            //brewery.image
                //.resizable()
                //.frame(width: 50, height: 50)
            Text(result.name)

            Spacer()
            
            //Text(result.)
            /*
            if brewery.isFavorite {
                Image(systemName: "star.fill")
                    .foregroundColor(.yellow)
            }
             */
        }
    }
}

struct BreweryListRow_Previews: PreviewProvider {
    static var previews: some View {
        BreweryListRow(result: Brewery(id: "banjo-brewing-fayetteville", name: "Banjo Brewing", state: "West Virginia", brewery_type: "", street: "", address_2: "", address_3: "", city: "", postal_code: "", country: ""))
    }
}
