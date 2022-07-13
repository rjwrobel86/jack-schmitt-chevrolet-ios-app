//
//  ContentView.swift
//  Jack Schmitt App
//
//  Created by Robert Wrobel on 5/26/22.
//

import SwiftUI
import Auth0
struct ContentView: View {
  
  // 1
  @State private var isAuthenticated = false


  var body: some View {

    // 2
    if isAuthenticated {
      
      // 3
      VStack {
        
        Menu()
        
        // 4
        Button("Log out") {
            logout()
            
        }
        .padding()
        
      }
      
    } else {
    
      // 5
      VStack {
        
        Text("SwiftUI Login Demo")
          .padding()
        
        // 6
        Button("Log in") {
          login()
        }
        .padding()
        
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
