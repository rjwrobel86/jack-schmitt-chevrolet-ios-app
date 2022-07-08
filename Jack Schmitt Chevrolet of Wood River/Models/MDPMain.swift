//
//  MDPMain.swift
//  Jack Schmitt App
//
//  Created by Robert Wrobel on 6/2/22.
//  Copyright © 2022 RJW. All rights reserved.
//


import SwiftUI

struct MDP: View {
    var model: Model
    
    var body: some View {
        ScrollView {
        VStack {

        HStack {
            Text(model.year).font(.largeTitle)
            Text(model.make).font(.largeTitle)
            Text(model.model).font(.largeTitle)
        }
            Image(model.hero)
                .resizable().scaledToFit()
            Image(model.p1)
                .resizable().scaledToFit()
            Image(model.p2)
                .resizable().scaledToFit()
            Image(model.p3)
                .resizable().scaledToFit()
            Image(model.p4)
                .resizable().scaledToFit()
            Image(model.p5)
                .resizable().scaledToFit()
            }
        }
    }
}

struct MDP_Previews: PreviewProvider {
    static var previews: some View {
        MDP(model:model[1])
    }
}
