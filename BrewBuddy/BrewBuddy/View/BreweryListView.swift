//
//  BreweryListView.swift
//  BrewBuddy
//
//  Created by henry benso on 4/25/22.
//

import SwiftUI
//import CoreLocation
//import MapKit
//import CoreLocation


struct BreweryListView: View {
    
    @State var loading = false
    @State var errorOccurred = false
    @State var results: [Brewery] = []
    
    
    var body: some View {
        NavigationView {
            VStack {
                if loading {
                    ProgressView()
                } else if errorOccurred {
                    Text("Something went wrong... we wish we can say more")
                } else {
                    List {
                        ForEach(results) { brewery in
                            NavigationLink {
                                BreweryDetailView(result: brewery)
                            } label: {
                                BreweryListRow(result: brewery)
                            }
                        }
                    }
                    .navigationBarTitle("All Breweries")
                }
            }
        }//.navigationBarTitle("All Breweries")
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
}

struct BreweryListView_Previews: PreviewProvider {
    static var previews: some View {
        BreweryListView()
    }
}
