//
//  VDPMain.swift
//  Jack Schmitt App
//
//  Created by Robert Wrobel on 5/31/22.
//  Copyright © 2022 RJW. All rights reserved.
//

import SwiftUI

struct VDP: View {
    var vehicle: Vehicle
    
    var body: some View {
        
        ScrollView {
        
            VStack {
            
                DiscountsLink()
            
                Text(vehicle.ItemTitle)
                .font(.title)
                .padding()
            
                AsyncImage(url: URL(string:vehicle.ImageURL), scale: 2) { image in
                image
                    .resizable()
                    .aspectRatio(contentMode: .fill)
                    .clipShape(Circle())
            } placeholder: { ProgressView().progressViewStyle(.circular) }
            
            Text("Sale Price:  " + vehicle.Price)
                .font(.body)
                .padding()
                .foregroundColor(.green)
                
            Divider()
            
            Text(vehicle.ItemDescription)
                .font(.body)
                .padding()
            
            Divider()
            
            Text("Additional Offers")
            
            HStack {
            Image("eq2020")
                    .resizable()
                    .frame(width: 150, height: 120)
                    .scaledToFit()
            Image("eqspecials")
                    .resizable()
                    .frame(width: 150, height: 120)
                    .scaledToFit()
                }
            }
            Divider()
            
            Text("Image Gallary")
            ImageGrid()
            
            
            Divider()
            
            Text("Finance With Jack")
                .font(.title2)
            
            FinanceLink().padding()
            }
        }
    }

struct VDP_Previews: PreviewProvider {
    static var previews: some View {
        VDP(vehicle:vehicle[0])
    }
}
