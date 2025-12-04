//
//  JourneyService.swift
//  Journeys
//
//  Created by Martin Hrbáček on 01.12.2025.
//

import Foundation

class JourneyService {
    var journeysData: [Journey] = []
    
    init() {
        decodeJourneyData()
    }
    
    func decodeJourneyData() {
        if let url = Bundle.main.url(forResource: "journeys", withExtension: "json") {
            do {
                let data = try Data(contentsOf: url)
                let decoder = JSONDecoder()
                decoder.keyDecodingStrategy = .convertFromSnakeCase
                journeysData = try decoder.decode([Journey].self, from: data)
            } catch {
                print("Cannot find the JSON file: \(error)")
            }
        }
    }
    
    func search(for searchTherm: String) -> [Journey] {
        if searchTherm.isEmpty {
            return journeysData
        } else {
            return journeysData.filter { journey in
                journey.name.localizedCaseInsensitiveContains(searchTherm)
            }
        }
    }
}
