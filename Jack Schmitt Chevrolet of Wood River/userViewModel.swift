
import Foundation

class apiCall {
    func getUsers(completion:@escaping ([vehicle]) -> ()) {
        guard let url = URL(string: "https://jscwr-json-bucket.s3.us-east-2.amazonaws.com/vehicles.json") else { return }
        URLSession.shared.dataTask(with: url) { (data, _, _) in
            let users = try! JSONDecoder().decode([vehicle].self, from: data!)
            print(users)
            
            DispatchQueue.main.async {
                completion(users)
            }
        }
        .resume()
    }
}
