//
//  ItineraryTitleView.swift
//  Journeys
//
//  Created by Martin Hrbáček on 01.12.2025.
//

import SwiftUI

struct ItineraryTitleView: View {
    
    let journey: Journey
    
    var body: some View {
        Text("Itinerary:")
            .font(.system(size: 18))
            .bold()
    }
}

#Preview {
    let journey = JourneyService().journeysData[0]
    
    NavigationStack {
        ItineraryTitleView(journey: journey)
    }
}
