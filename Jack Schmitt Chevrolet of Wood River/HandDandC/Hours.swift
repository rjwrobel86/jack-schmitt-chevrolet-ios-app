//
//  Hours.swift
//  JSCWR
//
//  Created by Robert Wrobel on 5/25/22.
//

import SwiftUI

struct Hours: View {
    var body: some View {
        VStack {
        Text("Store Hours")
            .font(.title)
            .padding()
        List {
            Text("Monday: 9AM - 8PM")
            Text("Tuesday: 9AM - 6PM")
            Text("Wednesday: 9AM - 8PM")
            Text("Thursday: 9AM - 6PM")
            Text("Friday: 9AM - 8PM")
            Text("Saturday: 9AM - 5PM")
            Text("Sunday: Closed")
        }
        }
    }
}

struct Hours_Previews: PreviewProvider {
    static var previews: some View {
        Hours()
    }
}
