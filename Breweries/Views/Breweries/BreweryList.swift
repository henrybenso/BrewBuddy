/*
See LICENSE folder for this sample’s licensing information.

Abstract:
A view showing a list of breweries.
*/

import SwiftUI

struct BreweryList: View {
    @EnvironmentObject var modelData: ModelData
    @State private var showFavoritesOnly = false

    var filteredBreweries: [Brewery] {
        modelData.breweries.filter { brewery in
            (!showFavoritesOnly || brewery.isFavorite)
        }
    }

    var body: some View {
        NavigationView {
            List {
                Toggle(isOn: $showFavoritesOnly) {
                    Text("Favorites only")
                }

                ForEach(filteredBreweries) { brewery in
                    NavigationLink {
                        BreweryDetail(brewery: brewery)
                    } label: {
                        BreweryRow(brewery: brewery)
                    }
                }
            }
            .navigationTitle("Breweries")
        }
    }
}

struct BreweryList_Previews: PreviewProvider {
    static var previews: some View {
        BreweryList()
            .environmentObject(ModelData())
    }
}
