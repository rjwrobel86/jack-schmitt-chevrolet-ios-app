//
//  DiscountsLink.swift
//  Jack Schmitt App
//
//  Created by Robert Wrobel on 5/31/22.
//  Copyright © 2022 RJW. All rights reserved.
//

import SwiftUI

struct DiscountsLink: View {
    var body: some View {
        Link(destination: URL(string: "https://www.schmittchevrolet.com/VehicleSearchResults?")!) {
            Image("extradiscounts")
                .resizable()
                .scaledToFit()
                .frame(width:307,height:132)

            }
        }
}

struct DiscountsLink_Previews: PreviewProvider {
    static var previews: some View {
        DiscountsLink()
    }
}
