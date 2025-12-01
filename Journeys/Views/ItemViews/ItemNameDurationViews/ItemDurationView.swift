//
//  ItemDurationView.swift
//  Journeys
//
//  Created by Martin Hrbáček on 01.12.2025.
//

import SwiftUI

struct ItemDurationView: View {
    
    let journey: Journey
    
    var body: some View {
        Text("Duration: \(journey.duration)")
            .font(.subheadline)
    }
}

#Preview {
    let journey = JourneyService().journeysData[0]
    
    NavigationStack {
        ItemDurationView(journey: journey)
    }
}
