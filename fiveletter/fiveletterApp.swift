//
//  fiveletterApp.swift
//  fiveletter
//
//  Created by Jake Kelman on 10/24/22.
//

import SwiftUI

@main
struct fiveletterApp: App {
    var body: some Scene {
        WindowGroup {
            MainMenu()
        }
    }
    
    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {

        // initialize Amplify
        let _ = Backend.initialize()

        return true
    }
}
