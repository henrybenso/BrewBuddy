//
//  BrewBuddyApp.swift
//  BrewBuddy
//
//  Created by henry benso on 5/2/22.
//

import SwiftUI

@main
struct BrewBuddyApp: App {
    
    @UIApplicationDelegateAdaptor(BrewBuddyAppDelegate.self) var appDelegate
    var body: some Scene {
        WindowGroup {
            ContentView()
                .environmentObject(BrewBuddyAuth())
        }
    }
}
