//
//  SilveradoLink.swift
//  Jack Schmitt App
//
//  Created by Bob Wrobel on 6/3/22.
//  Copyright © 2022 RJW. All rights reserved.
//

import SwiftUI

struct SilveradoLink: View {
    var body: some View {
        Link(destination: URL(string: "https://www.schmittchevrolet.com/VehicleSearchResults?make=Chevrolet&model=Silverado%201500")!) {
            Image("reviewus")
                .resizable()
                .frame(width: 350.0, height: 175)
                .scaledToFit()
                .padding()
                    
            }

        }
    }

struct SilveradoLink_Previews: PreviewProvider {
    static var previews: some View {
        SilveradoLink()
    }
}
