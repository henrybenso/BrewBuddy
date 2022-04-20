/*
See LICENSE folder for this sample’s licensing information.

Abstract:
A single row to be displayed in a list of breweries.
*/

import SwiftUI

struct BreweryRow: View {
    var brewery: Brewery

    var body: some View {
        HStack {
            brewery.image
                .resizable()
                .frame(width: 50, height: 50)
            Text(brewery.name)

            Spacer()

            if brewery.isFavorite {
                Image(systemName: "star.fill")
                    .foregroundColor(.yellow)
            }
        }
    }
}

struct BreweryRow_Previews: PreviewProvider {
    static var breweries = ModelData().breweries

    static var previews: some View {
        Group {
            BreweryRow(brewery: breweries[0])
            BreweryRow(brewery: breweries[1])
        }
        .previewLayout(.fixed(width: 300, height: 70))
    }
}
