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
            Text(journey.description)
                .font(.system(size: 18))
                .bold()
            
            Text("Itinerary:")
                .font(.system(size: 18))
                .bold()
            
            ForEach(journey.itinerary, id: \.self) { itinerary in
                VStack(alignment: .leading, spacing: 4) {
                    Text("Day \(itinerary.day): \(itinerary.location)")
                        .font(.system(size: 16))
                        .bold()
                    
                    Text(itinerary.activity)
                        .font(.subheadline)
                }
            }
            
            VStack(alignment: .leading, spacing: 4) {
                Text("About:")
                    .font(.system(size: 18))
                    .bold()
                Text(journey.subDescription)
                    .font(.system(size: 18))
            }
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
