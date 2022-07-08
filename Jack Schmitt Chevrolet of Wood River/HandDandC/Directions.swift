//
//  Directions.swift
//  JSCWR
//
//  Created by Robert Wrobel on 5/25/22.
//

import SwiftUI

struct Directions: View {
    var body: some View {
        VStack {
            Text("Location")
                .font(.title)
                .padding()
            Text("1870 E. Edwardsville Rd.")
            
            Text("Wood River, IL. 62095")
                
            Link("Get Directions from Google", destination: URL(string: "https://goo.gl/maps/VE1YkFNhn8rK4xof9")!)
                    .padding(10.0)
                    .border(/*@START_MENU_TOKEN@*/Color.gray/*@END_MENU_TOKEN@*/, width: 3)
        }
    }
}

struct Directions_Previews: PreviewProvider {
    static var previews: some View {
        Directions()
    }
}

