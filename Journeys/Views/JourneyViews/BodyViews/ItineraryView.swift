//
//  ItineraryView.swift
//  Journeys
//
//  Created by Martin Hrbáček on 01.12.2025.
//

import SwiftUI

struct ItineraryView: View {
    
    let journey: Journey
    
    var body: some View {
        // ItineraryTitleView
        ItineraryTitleView(journey: journey)
        
        // DayActivityView
        DayActivityView(journey: journey)
    }
}

#Preview {
    let journey = JourneyService().journeysData[0]
    
    NavigationStack {
        ItineraryView(journey: journey)
    }
}
