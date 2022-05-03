//
//  NearbyBreweryMap.swift
//  BrewBuddy
//
//  Created by henry benso on 4/26/22.
//

import SwiftUI
import MapKit

// This is meant to show a map of your location and nearby breweries. If you already have a view for this, go ahead and delete it.
struct NearbyBreweryMap: View { // MAP VIEW
    
    //var result: Brewery
    
    @State private var region = MKCoordinateRegion(
            center: CLLocationCoordinate2D(latitude: 37.334_900,
                                           longitude: -122.009_020),
            latitudinalMeters: 750,
            longitudinalMeters: 750
        )
    
    var body: some View {
        Map(coordinateRegion: $region)
    }
}

struct NearbyBreweryMap_Previews: PreviewProvider {
    static var previews: some View {
        NearbyBreweryMap()
    }
}
