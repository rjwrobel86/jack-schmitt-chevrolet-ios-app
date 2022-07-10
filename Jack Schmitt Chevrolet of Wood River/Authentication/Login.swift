//
//  Login.swift
//  Jack Schmitt Chevrolet of Wood River
//
//  Created by Robert Wrobel on 7/8/22.
//

import SwiftUI

struct Login: View {
    @State var email = ""
    var body: some View {
        NavigationView {
            VStack {
                Image("equinox-1").resizable().scaledToFit().frame(width:150,height:150)
                VStack {
                    
                    TextField("Email Address", text: $email).padding().background(Color(.secondarySystemBackground))
                    
                    SecureField("Email Address", text: $email).padding().background(Color(.secondarySystemBackground))                }.padding()
                
                Button(action: {
                    
                }, label: {
                    Text("Sign In")
                        .foregroundColor(Color.white)
                        .frame(width:200,height:50)
                        .cornerRadius(8)
                        .background(Color.blue)
                })
            


                Spacer()
            }.navigationTitle("Sign In NOW!")
        }
    }
}

struct Login_Previews: PreviewProvider {
    static var previews: some View {
        Login()
    }
}
