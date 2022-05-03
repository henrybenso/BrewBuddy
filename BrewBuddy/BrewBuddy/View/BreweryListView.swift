//
//  BreweryListView.swift
//  BrewBuddy
//
//  Created by henry benso on 4/25/22.
//

import SwiftUI

struct BreweryListView: View {
    
    //@Published var CLLocation
    
    
    @State var loading = false
    @State var errorOccurred = false
    @State var results: [Brewery] = []
    
    @State private var showFavoritesOnly = false
    
    /*
    var filteredBreweries: [Brewery] {
        modelData.breweries.filter { brewery in
            (!showFavoritesOnly || brewery.isFavorite)
        }
    }
    */
    
    var body: some View {
        NavigationView {
            VStack {
                if loading {
                    ProgressView()
                } else if errorOccurred {
                    Text("Something happened, try again.")
                } else {
                    List {
                        Toggle(isOn: $showFavoritesOnly) {
                            Text("Favorites only")
                        }

                        ForEach(results) { brewery in
                            NavigationLink {
                                BreweryDetailView(result: brewery)
                            } label: {
                                BreweryListRow(result: brewery)
                            }
                        }
                    }
                    .navigationTitle("Breweries")
                }
            }
        }
        .task() {
            await getData()
        }
    }
    
    func getData() async {
        errorOccurred = false
        loading = true
        
        do {
            let temp = try await getListBreweries()
            print("api call works")
            results = temp
        } catch {
        errorOccurred = true
            debugPrint("Unexpected error: \(error)")
        }
        
        loading = false
        
    }
    
    //Button(action: <#T##() -> Void#>, label: "Breweries Near Me")
    
}

struct BreweryListView_Previews: PreviewProvider {
    static var previews: some View {
        BreweryListView()
    }
}
