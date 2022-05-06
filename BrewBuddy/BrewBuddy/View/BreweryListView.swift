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
    @EnvironmentObject var auth: BrewBuddyAuth
    
    @Binding var requestLogin: Bool
    
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
                    .toolbar {
                        ToolbarItemGroup(placement: .navigationBarTrailing) {
                            if auth.user != nil {
                                Button("Sign out") {
                                    do {
                                        try auth.signOut()
                                    } catch {
                                        // blah catch error here
                                    }
                                }
                            } else {
                                Button("Sign in") {
                                    requestLogin = true
                                }
                            }
                        }
                    }
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
    @State static var requestLogin = false
    static var previews: some View {
        BreweryListView(requestLogin: $requestLogin)
            .environmentObject(BrewBuddyAuth())
    }
}
