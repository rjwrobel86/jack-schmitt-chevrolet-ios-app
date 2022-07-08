//
//  HandD.swift
//  JSCWR
//
//  Created by Robert Wrobel on 5/25/22.
//

import SwiftUI

struct HandD: View {
    var body: some View {
        VStack {
        TabView {
            Hours()
                .tabItem {
                    Image(systemName: "clock")
                    Text("Store Hours")
                }
            Directions()
                .tabItem {
                    Image(systemName: "list.bullet.rectangle.fill")
                    Text("Get Directions")
                }
            MapViews()
                .tabItem {
                    Image(systemName: "map")
                    Text("Local Map")
                }
        }
        .font(.headline)
        }
    }
}

struct HandD_Previews: PreviewProvider {
    static var previews: some View {
        HandD()
    }
}
