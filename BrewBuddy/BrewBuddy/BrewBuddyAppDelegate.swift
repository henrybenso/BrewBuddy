//
//  BrewBuddyAppDelegate.swift
//  BrewBuddy
//
//  Created by Patrick Jayoma on 5/5/22.
//

import Foundation
import UIKit

import Firebase

class BrewBuddyAppDelegate: NSObject, UIApplicationDelegate {
    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {
        FirebaseApp.configure()
        return true
    }
}
