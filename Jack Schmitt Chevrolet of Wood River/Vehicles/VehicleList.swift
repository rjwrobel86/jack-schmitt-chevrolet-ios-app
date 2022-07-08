//
//  VehicleList.swift
//  Jack Schmitt Chevrolet of Wood River
//
//  Created by Robert Wrobel on 7/8/22.
//

import SwiftUI

struct VehicleList: View {
    var body: some View {
        List(vehicle) { vehicle in
            NavigationLink {
                VDP(vehicle: vehicle)
            } label: {
                VehicleRow(vehicle: vehicle)
            }
        }.navigationTitle("On Sale")
            .refreshable {
    }
}
}
struct VehicleList_Previews: PreviewProvider {
    static var previews: some View {
        VehicleList()
    }
}
