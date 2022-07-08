//
//  Specials.swift
//  JSCWR
//
//  Created by Robert Wrobel on 5/25/22.
//

import SwiftUI

struct Specials: View {
    var body: some View {
        VStack {
        Text("Specials")
                .font(.largeTitle)
            ScrollView {
            Divider()
            VStack {
                Image("serioussavings")
                    .resizable()
                    .frame(width: 350.0, height: 175)
                    .padding()
                    .scaledToFit()
                
                
                ReviewLink()
                EquinoxLink()
                Image("financehero")
                        .resizable()
                        .frame(width: 350.0, height: 175)
                        .scaledToFit()
                        .padding()

                Image("weneedyourcar")
                        .resizable()
                        .frame(width: 350.0, height: 175)
                        .scaledToFit()
                        .padding()

                Image("pricematch")
                        .resizable()
                        .frame(width: 350.0, height: 175)
                        .scaledToFit()
                        .padding()

                Image("cpo")
                        .resizable()
                        .frame(width: 350.0, height: 175)
                        .scaledToFit()
                        .padding()

                }
            }
        }
    }
}

struct Specials_Previews: PreviewProvider {
    static var previews: some View {
        Specials()
    }
}

