//
//  DayActivityView.swift
//  Journeys
//
//  Created by Martin Hrbáček on 01.12.2025.
//

import SwiftUI

struct DayActivityView: View {
    
    let journey: Journey
    
    var body: some View {
        ForEach(journey.itinerary, id: \.self) { itinerary in
            VStack(alignment: .leading, spacing: 4) {
                Text("Day \(itinerary.day): \(itinerary.location)")
                    .font(.system(size: 16))
                    .bold()
                
                Text(itinerary.activity)
                    .font(.subheadline)
            }
        }
    }
}

#Preview {
    let journey = JourneyService().journeysData[0]
    
    NavigationStack {
        DayActivityView(journey: journey)
    }
}
