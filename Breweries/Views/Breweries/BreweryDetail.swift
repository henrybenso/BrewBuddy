/*
See LICENSE folder for this sample’s licensing information.

Abstract:
A view showing the details for a brewery.
*/

import SwiftUI

struct BreweryDetail: View {
    @EnvironmentObject var modelData: ModelData
    var brewery: Brewery

    var breweryIndex: Int {
        $modelData.breweries.firstIndex(where: { $0.id == brewery.id })!
    }

    var body: some View {
        ScrollView {
            MapView(coordinate: brewery.locationCoordinate)
                .ignoresSafeArea(edges: .top)
                .frame(height: 300)

            CircleImage(image: brewery.image)
                .offset(y: -130)
                .padding(.bottom, -130)

            VStack(alignment: .leading) {
                HStack {
                    Text(brewery.name)
                        .font(.title)
                    FavoriteButton(isSet: $modelData.breweries[breweryIndex].isFavorite)
                }

                HStack {
                    Text(brewery.park)
                    Spacer()
                    Text(brewery.state)
                }
                .font(.subheadline)
                .foregroundColor(.secondary)

                Divider()

                Text("About \(brewery.name)")
                    .font(.title2)
                Text(brewery.description)
            }
            .padding()
        }
        .navigationTitle(brewery.name)
        .navigationBarTitleDisplayMode(.inline)
    }
}

struct BreweryDetail_Previews: PreviewProvider {
    static let modelData = ModelData()

    static var previews: some View {
        BreweryDetail(brewery: modelData.breweries[0])
            .environmentObject(modelData)
    }
}
