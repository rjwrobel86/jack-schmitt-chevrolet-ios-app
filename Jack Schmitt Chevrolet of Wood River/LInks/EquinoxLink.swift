//
//  EquinoxLink.swift
//  Jack Schmitt App
//
//  Created by Bob Wrobel on 6/3/22.
//  Copyright © 2022 RJW. All rights reserved.
//

import SwiftUI

struct EquinoxLink: View {
    var body: some View {
        Link(destination: URL(string: "https://www.schmittchevrolet.com/VehicleSearchResults?model=Equinox")!) {
            Image("equdeal")
                .resizable()
                .scaledToFit()
                .frame(width:307,height:132)
        }
    }
}

struct EquinoxLink_Previews: PreviewProvider {
    static var previews: some View {
        EquinoxLink()
    }
}
