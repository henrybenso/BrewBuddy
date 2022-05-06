//
//  Tabs.swift
//  BrewBuddy
//
//  Created by henry benso on 5/5/22.
//

import SwiftUI

struct Tabs: View {
    @EnvironmentObject var auth: BrewBuddyAuth
    @State var requestLogin = false
    
    var body: some View {
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

struct Tabs_Previews: PreviewProvider {
    static var previews: some View {
        Tabs().environmentObject(BrewBuddyAuth())
    }
}
