//
//  ContentView.swift
//  Jack Schmitt App
//
//  Created by Robert Wrobel on 5/26/22.
//

import SwiftUI
import Auth0

struct ContentView: View {
  
@State private var isAuthenticated = false


  var body: some View {
    if isAuthenticated {
        VStack {
            Menu()
      }
    } else {
        VStack {
        
        Text("Welcome to the Jack Schmitt App")
              .padding().font(.title)
          
        Text("Please login for awesome deals and prizes!")
              .padding().font(.subheadline)
        
        ZStack {
            Rectangle().size(width:60,height:30)
            Button("Log in") {
                login()
            }
        }
    }
      
    } // if isAuthenticated
    
  }
  
}

extension ContentView {
      
    func login() {
          Auth0 // 1
            .webAuth() // 2
            .start { result in // 3
              switch result {
                // 4
                case .failure(let error):
                  print("Failed with: \(error)")
                // 5
                case .success:
                  self.isAuthenticated = true
                  print("Credentials = Legit")
                }
            }
        }
  
    func logout() {
       Auth0 // 1
         .webAuth() // 2
         .clearSession { result in // 3
           switch result {
             // 4
             case .failure(let error):
               print("Failed with: \(error)")
               // 5
             case .success:
               self.isAuthenticated = false
           }
         }
     }
  
}
struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
