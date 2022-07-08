//
//  ReviewLink.swift
//  Jack Schmitt App
//
//  Created by Bob Wrobel on 6/3/22.
//  Copyright © 2022 RJW. All rights reserved.
//

import SwiftUI

struct ReviewLink: View {
    var body: some View {
        Link(destination: URL(string: "https://round-frost-9279.bss.design")!) {
            Image("reviewus")
                .resizable()
                .frame(width: 350.0, height: 175)
                .scaledToFit()
                .padding()
                    
            }

        }
    }

struct ReviewLink_Previews: PreviewProvider {
    static var previews: some View {
        ReviewLink()
    }
}
