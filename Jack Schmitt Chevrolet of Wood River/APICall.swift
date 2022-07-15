//
//  APICall.swift
//  Jack Schmitt Chevrolet of Wood River
//
//  Created by Robert Wrobel on 7/14/22.
//

import Foundation


class apiCall {
    func getVehs(completion:@escaping ([Vehicle]) -> ()) {
        guard let url = URL(string: "https://jscwr-json-bucket.s3.us-east-2.amazonaws.com/vehicles.json") else { return }
        
        URLSession.shared.dataTask(with: url) { (data, _, _) in
            let vehicles = try! JSONDecoder().decode([Vehicle].self, from: data!)
            print(vehicles)
            
            DispatchQueue.main.async {
                completion(vehicles)
            }
        }
        .resume()
    }
}
