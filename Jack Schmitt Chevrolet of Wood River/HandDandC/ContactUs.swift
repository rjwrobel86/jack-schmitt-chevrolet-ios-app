//
//  ContactUs.swift
//  JSCWR
//
//  Created by Robert Wrobel on 5/25/22.
//

import SwiftUI

struct ContactUs: View {
    var body: some View {
        Text("Contact Us")
            .font(.largeTitle)
        VStack {
            
            ZStack {
                Rectangle()
                    .frame(width:250,height:50)
                    .foregroundColor(.white)
                Link("Visit Us Online", destination: URL(string: "https://www.schmittchevrolet.com")!)
                    .padding(5.0)
                    .font(.title)
                }
        }
            ZStack {
                Rectangle()
                    .frame(width:250,height:50)
                    .foregroundColor(.white)

                Link("Call Us", destination: URL(string: "tel:16182594900")!)
                    .padding(5.0)
                    .font(.title)
            }
                
        ZStack {
            Rectangle()
                .frame(width:250,height:50)
                .foregroundColor(.white)

            Link("Text Us", destination: URL(string: "sms:16189794773")!)
            .padding(5.0)
            .font(.title)
        }
        ZStack {
            Rectangle()
                .frame(width:250,height:50)
                .foregroundColor(.white)

            Link("Email Us", destination: URL(string: "mailto:jackschmittwoodriver@gmail.com")!)
            .padding(5.0)
            .font(.title)
        }
    }
}

struct ContactUs_Previews: PreviewProvider {
    static var previews: some View {
        ContactUs()
    }
}
