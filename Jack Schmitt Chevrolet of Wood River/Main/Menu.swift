//
//  Menu.swift
//  Jack Schmitt App
//
//  Created by Robert Wrobel on 5/26/22.
//

import SwiftUI

struct Menu: View {
    var body: some View {
            
        NavigationView {
            List {
            NavigationLink(destination: VehicleList()) { Text("Browse Vehicles") }
                NavigationLink(destination: Specials()) { Text("Weekly Specials") }
                NavigationLink(destination: ModelList()) { Text("Model Research") }
                NavigationLink(destination: HandD()) { Text("Hours and Directions") }
                NavigationLink(destination: ContactUs()) { Text("Contact Us") }
                NavigationLink(destination: ReviewLink()) { Text("Review Us On Google") }
                }.navigationTitle("Main Menu")
                .foregroundColor(.blue)
        }
    }
}

struct Menu_Previews: PreviewProvider {
    static var previews: some View {
        Menu()
    }
}
