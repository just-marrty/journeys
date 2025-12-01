//
//  DescriptionView.swift
//  Journeys
//
//  Created by Martin Hrbáček on 01.12.2025.
//

import SwiftUI

struct DescriptionView: View {
    
    let journey: Journey
    
    var body: some View {
        Text(journey.description)
            .font(.system(size: 18))
            .bold()
    }
}

#Preview {
    let journey = JourneyService().journeysData[0]
    
    NavigationStack {
        DescriptionView(journey: journey)
    }
}
