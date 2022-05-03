//
//  BreweryDetailView.swift
//  BrewBuddy
//
//  Created by henry benso on 4/25/22.
//

import SwiftUI

struct BreweryDetailView: View {
    
    var result: Brewery
    
    //let latitude = Double(result.latitude)
    
    /*
    var breweryIndex: Int {
        $modelData.breweries.firstIndex(where: { $0.id == result.id })!
    }
    */
     
    var body: some View {
        ScrollView {
            //Double(result.longitude)
            /*
            MapView(coordinate: result.locationCoordinate)
                .ignoresSafeArea(edges: .top)
                .frame(height: 300)

            //CircleImage(image: brewery.image)
                //.offset(y: -130)
                //.padding(.bottom, -130)
             */

            VStack(alignment: .leading) {
                HStack {
                    //Double(result.longitude)
                        //.font(.title)
                    /*FavoriteButton(isSet: $modelData.breweries[breweryIndex].isFavorite)
                     */
                }

                HStack {
                    //Text(brewery.park)
                    Spacer()
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

struct BreweryDetailView_Previews: PreviewProvider {
    static var previews: some View {
        BreweryDetailView(result: Brewery(id: "banjo-brewing-fayetteville", name: "Banjo Brewing", state: "West Virginia", brewery_type: "", street: "", address_2: "", address_3: "", city: "", postal_code: "", country: ""))
    }
}


/*
 
 MechGroupBuysDetailView(result: MechGroupBuys(
 name: "GLOVE x Domikey Link Fire",
 startDate: "3/15/22",
 endDate: "4/15/22",
 pricing: "Base: 110",
 saleType: "Unlimited",
 vendors: "Worldwide: Kprepublic: https://kprepublic.com/products/gb-domikey-x-glove-link-fire-cherry-profile-keycaps ",
 additionalLinks: "",
 mainImage: "https://cdn.shopify.com/s/files/1/2711/4238/products/KIT_-05.jpg?v=1645598371"))
 
 */
