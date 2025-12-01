//
//  BodyView.swift
//  Journeys
//
//  Created by Martin Hrbáček on 01.12.2025.
//

import SwiftUI

struct BodyView: View {
    
    let journey: Journey
    
    var body: some View {
        VStack(alignment: .leading, spacing: 12) {
            // DescriptionView
            DescriptionView(journey: journey)
            
            // ItineraryView
            ItineraryView(journey: journey)
            
            // AboutView
            AboutView(journey: journey)
        }
        .padding()
    }
}

#Preview {
    let journey = JourneyService().journeysData[0]
    
    NavigationStack {
        BodyView(journey: journey)
    }
}
