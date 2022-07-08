// This file was generated from JSON Schema using quicktype, do not modify it directly.
// To parse the JSON, add this file to your project and do:
//
//   let vehicles = try? newJSONDecoder().decode(Vehicles.self, from: jsonData)

import Foundation

//Vehicle
struct Vehicle: Codable, Hashable, Identifiable {
    var id = UUID()
    let ID2: Int
    let ItemTitle: String
    let FinalURL: String
    let ImageURL: String
    let ItemSubtitle, ItemDescription, ItemCategory, Price: String
    let SalePrice, ContextualKeywords, ItemAddress, TrackingTemplate: String
    let CustomParameter, FinalMobileURL: String


    enum CodingKeys: String, CodingKey {
        case ID2 = "ID2"
        case ItemTitle = "ItemTitle"
        case FinalURL = "FinalURL"
        case ImageURL = "ImageURL"
        case ItemSubtitle = "ItemSubtitle"
        case ItemDescription = "ItemDescription"
        case ItemCategory = "ItemCategory"
        case Price = "Price"
        case SalePrice = "SalePrice"
        case ContextualKeywords = "ContextualKeywords"
        case ItemAddress = "ItemAddress"
        case TrackingTemplate = "TrackingTemplate"
        case CustomParameter = "CustomParameter"
        case FinalMobileURL = "FinalMobileURL"
    }
}

typealias Vehicles = [Vehicle]


