//
//  Journey.swift
//  Journeys
//
//  Created by Martin Hrbáček on 01.12.2025.
//

import Foundation

struct Journey: Decodable, Identifiable, Hashable {
    let id: String
    let name: String
    let description: String
    let subDescription: String
    let duration: String
    let price: Int
    let image: String
    let itinerary: [Itinerary]
    
    struct Itinerary: Decodable, Hashable {
        let day: Int
        let location: String
        let activity: String
    }
    
    enum CodingKeys: String, CodingKey {
        case id
        case name
        case description
        case subDescription
        case duration
        case price
        case image
        case itinerary
    }
    
//    init(from decoder: any Decoder) throws {
//        let container = try decoder.container(keyedBy: CodingKeys.self)
//        self.id = try container.decode(String.self, forKey: .id)
//        self.name = try container.decode(String.self, forKey: .name)
//        self.description = try container.decode(String.self, forKey: .description)
//        self.duration = try container.decode(String.self, forKey: .duration)
//        self.price = try container.decode(Int.self, forKey: .price)
//        self.image = try container.decode(String.self, forKey: .image)
//        self.itinerary = try container.decode([Journey.Itinerary].self, forKey: .itinerary)
//    }
}
