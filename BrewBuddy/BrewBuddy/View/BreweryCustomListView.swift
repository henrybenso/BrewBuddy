//
//  BreweryCustomListView.swift
//  BrewBuddy
//
//  Created by henry benso on 5/4/22.
//

import SwiftUI
import CoreLocation

struct BreweryCustomListView: View {
    
    //@Published var CLLocation
    @State var called = false
    @State private var showError: Bool = false
    @State var fetching = false
    //@State var success: = false
    @State var loading2 = false
    @State var errorOccurred2 = false
    @State var nearByresults: [Brewery2] = []
    
    @StateObject var locationViewModel = LocationViewModel()
    
    @State private var showFavoritesOnly = false // FAVORITE ONLY BUTTON DOES NOT WORK RN. NEED FIREBASE TO STORE WHICH ARE FAVORITES
    
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
                if loading2 {
                    ProgressView()
                } else if errorOccurred2 {
                    Text("Something happened, try again.")
                } else {
                    List {
                        /*
                        Toggle(isOn: $showFavoritesOnly) {
                            Text("Favorites only")
                        }
                     */
                        ForEach(nearByresults) { brewery2 in
                            NavigationLink {
                                BreweryDetailView2(result: brewery2)
                            } label: {
                                BreweryListRow2(result: brewery2)
                            }
                        }
                    }
                    .navigationBarTitle("Breweries Near Me")
                    .toolbar {
                        //ToolbarItem(placement: .principal) {
                         //   Image("banner")
                        //}
                        ToolbarItem(placement: .navigationBarTrailing) {
                            
                            if self.showError {
                                if locationViewModel.authorizationStatus == .restricted {
                                    
                                    ErrorView(errorText: "Location use is restrcited.")
                                        .frame( alignment: .top)
                                        .onAppear {
                                            DispatchQueue.main.asyncAfter(deadline: DispatchTime.now() + 3, execute: {
                                                self.showError.toggle()
                                            })
                                        }
                                    
                                } else if locationViewModel.authorizationStatus == .denied {
                                    
                                    //ErrorView(errorText: "The app does not have location permissions. Please enable them in settings.")
                                    ErrorView(errorText: "Location use is denied.")
                                        .frame( alignment: .top)
                                    
                                        .onAppear {
                                            DispatchQueue.main.asyncAfter(deadline: DispatchTime.now() + 3, execute: {
                                                self.showError.toggle()
                                            })
                                        }
                                     
                                } else if locationViewModel.authorizationStatus == .authorizedAlways || locationViewModel.authorizationStatus == .authorizedWhenInUse {
                                    /*
                                    NavigationLink(destination: BreweryCustomListView()) {
                                        
                                    }
                                    */
                                    //BreweryCustomListView()
                                    
                                        //.environmentObject(locationViewModel)
                                    //success.toggle()
                                    SuccessView()
                                        .frame( alignment: .top)
                                    
                                        .onAppear {
                                            self.showError.toggle()
                                            DispatchQueue.main.asyncAfter(deadline: DispatchTime.now() + 3, execute: {
                                                self.called.toggle()
                                            })
                                        }
                                }
                            } else {
                                Button {
                                        print("allowing permissions")
                                        locationViewModel.requestPermission()
                                    self.showError.toggle()
                                    
                                    } label: {
                                        Image(systemName: "location")
                                        Text("Breweries near me")
                                    }
                                    .foregroundColor(.white)
                                    .background(buttonColor)
                                    .buttonStyle(.bordered)
                                    .cornerRadius(8)
                                    .disabled(called)
                                    .task() {
                                        fetching = true
                                        do {
                                            nearByresults = try await getListBreweriesByDistance(latitude: String(coordinate?.latitude ?? 0), longitude: String(coordinate?.longitude ?? 0))
                                            fetching = false
                                        } catch {
                                            self.errorOccurred2 = errorOccurred2
                                            fetching = false
                                        }
                                    }
                            }
                        }
                        
                    }
                }
            }
        }
        //
    }
    
    var buttonColor: Color {
        return called ? .gray : Color.yellow
    }
    
    var coordinate: CLLocationCoordinate2D? {
            locationViewModel.lastSeenLocation?.coordinate
        }
    
    func getData2() async {
        errorOccurred2 = false
        loading2 = true
        
        do {
            let temp = try await getListBreweriesByDistance(latitude: String(coordinate?.latitude ?? 0), longitude: String(coordinate?.longitude ?? 0))
            print("api works")
            nearByresults = temp
        } catch {
        errorOccurred2 = true
            debugPrint("Unexpected error: \(error)")
        }
        
        loading2 = false
        
    }
    
    
}


struct BreweryCustomListView_Previews: PreviewProvider {
    static var previews: some View {
        BreweryCustomListView()
    }
}
