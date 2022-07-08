//
//  ImageGrid.swift
//  Jack Schmitt App
//
//  Created by Bob Wrobel on 6/3/22.
//  Copyright © 2022 RJW. All rights reserved.
//

import SwiftUI

struct ImageGrid: View {
    
    private var symbols = ["equhero", "silhero","trahero","spahero"]
    
    private var threeColumnGrid = [GridItem(.flexible()), GridItem(.flexible()), GridItem(.flexible())]
    
    var body: some View {
        ScrollView {
            LazyVGrid(columns: threeColumnGrid) {
                ForEach(silveradopics, id:\.self) { symbol in
                    Image(symbol).resizable().scaledToFit()
                }
            }
        }


    }
}

struct ImageGrid_Previews: PreviewProvider {
    static var previews: some View {
        ImageGrid()
    }
}
