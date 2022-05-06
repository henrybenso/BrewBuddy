//
//  Brew.swift
//  BrewBuddy
//
//  Created by Patrick Jayoma on 5/5/22.
//

import SwiftUI

struct Brew: View {
    @EnvironmentObject var auth: BrewBuddyAuth
    @State var requestLogin = false

    var body: some View {
        if let authUI = auth.authUI {
            BreweryListView(requestLogin: $requestLogin)
                .sheet(isPresented: $requestLogin) {
                    AuthViewController(authUI: authUI)
                }
        } else {
            VStack {
                Text("Sorry, looks like we aren’t set up right!")
                    .padding()

                Text("Please contact this app’s developer for assistance.")
                    .padding()
            }
        }
        TabView {
            BreweryListView(requestLogin: $requestLogin)
                .tabItem {
                    Label("All", systemImage: "globe")
                }
            
            BreweryCustomListView()
                .tabItem {
                    Label("Near me", systemImage: "shareplay")
                }
        }
    }
}

struct Brew_Previews: PreviewProvider {
    static var previews: some View {
        Brew().environmentObject(BrewBuddyAuth())
    }
}
