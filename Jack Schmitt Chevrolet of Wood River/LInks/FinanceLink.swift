//
//  FinanceLink.swift
//  Jack Schmitt App
//
//  Created by Robert Wrobel on 5/31/22.
//  Copyright © 2022 RJW. All rights reserved.
//

import SwiftUI

struct FinanceLink: View {
    var body: some View {
        Link(destination: URL(string: "https://www.schmittchevrolet.com/FinancePreQualForm")!) {
            Image("financehero")
                .resizable()
                .scaledToFit()
                .frame(width:307,height:132)
                
        }

    }
}

struct FinanceLink_Previews: PreviewProvider {
    static var previews: some View {
        FinanceLink()
    }
}
