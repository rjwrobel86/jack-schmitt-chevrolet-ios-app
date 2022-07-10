//
//  Jack_Schmitt_Chevrolet_of_Wood_RiverApp.swift
//  Jack Schmitt Chevrolet of Wood River
//
//  Created by Robert Wrobel on 7/8/22.
//

import SwiftUI
import Firebase
import FirebaseAnalytics

@main
struct Jack_Schmitt_Chevrolet_of_Wood_RiverApp: App {
    
    @UIApplicationDelegateAdaptor(AppDelegate.self) var appDelegate
    
    var body: some Scene {
        WindowGroup {
            Login()
            
        }
    }
}

class AppDelegate: NSObject, UIApplicationDelegate {
    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions:
                     [UIApplication.LaunchOptionsKey : Any]? = nil) -> Bool {
        
        FirebaseApp.configure()
        
        return true
    }
}
