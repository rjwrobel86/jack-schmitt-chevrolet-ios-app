//
//  ModelsList.swift
//  Jack Schmitt App
//
//  Created by Robert Wrobel on 6/2/22.
//  Copyright © 2022 RJW. All rights reserved.
//

import SwiftUI

struct ModelList: View {
    var body: some View {
        
        List(model) { model in
            NavigationLink {
                MDP(model: model)
            } label: {
                ModelRow(model: model)
            }
        }.navigationTitle("New Models")
            .refreshable {
    }
}
}

struct ModelList_Previews: PreviewProvider {
    static var previews: some View {
        ModelList()
    }
}
