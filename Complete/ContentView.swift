/*
See LICENSE folder for this sample’s licensing information.

Abstract:
A view showing the list of breweries.
*/

import SwiftUI

struct ContentView: View {
    let locationFetcher = LocationFetcher()

    var body: some View {
        VStack {
            Button("Allow Location Tracking") {
                self.locationFetcher.start()
            }

            Button("Read Location") {
                if let location = self.locationFetcher.lastKnownLocation {
                    print("Your location is \(location)")
                } else {
                    print("Your location is unknown")
                        }
                    }
                }
        BreweryList()

            }
        }




struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
            .environmentObject(ModelData())
    }
}
