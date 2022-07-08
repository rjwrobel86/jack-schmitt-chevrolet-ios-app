//
//  ModelsModel.swift
//  Jack Schmitt App
//
//  Created by Robert Wrobel on 6/1/22.
//  Copyright © 2022 RJW. All rights reserved.
//

import Foundation

//Model
struct Model: Codable, Hashable, Identifiable {
    var id: Int
    var year: String
    var make: String
    var model: String
    var trim: String
    var msrp: String
    var seating: String
    var description: String
    var p1: String
    var p2: String
    var p3: String
    var p4: String
    var p5: String
    var icon: String
    var hero: String

}
