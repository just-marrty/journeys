//
//  JourneyImageView.swift
//  Journeys
//
//  Created by Martin Hrbáček on 01.12.2025.
//

import SwiftUI

struct JourneyImageView: View {
    
    let journey: Journey
    
    var body: some View {
        Image(journey.image)
            .resizable()
            .scaledToFit()
    }
}

#Preview {
    let journey = JourneyService().journeysData[0]
    
    NavigationStack {
        JourneyImageView(journey: journey)
    }
}
