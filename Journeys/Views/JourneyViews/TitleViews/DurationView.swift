//
//  DurationView.swift
//  Journeys
//
//  Created by Martin Hrbáček on 01.12.2025.
//

import SwiftUI

struct DurationView: View {
    
    let journey: Journey
    
    var body: some View {
        VStack {
            Text("Duration:")
                .font(.system(size: 16))
            Text("\(journey.duration)")
                .font(.subheadline)
        }
    }
}

#Preview {
    let journey = JourneyService().journeysData[0]
    
    NavigationStack {
        DurationView(journey: journey)
    }
}
