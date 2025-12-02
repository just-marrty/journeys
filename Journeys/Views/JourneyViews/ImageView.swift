//
//  ImageView.swift
//  Journeys
//
//  Created by Martin Hrbáček on 01.12.2025.
//

import SwiftUI

struct ImageView: View {
    
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
        ImageView(journey: journey)
    }
}
