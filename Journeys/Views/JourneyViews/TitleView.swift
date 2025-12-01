//
//  HeaderView.swift
//  Journeys
//
//  Created by Martin Hrbáček on 01.12.2025.
//

import SwiftUI

struct TitleView: View {
    
    let journey: Journey
    
    var body: some View {
        HStack {
            // NameView
            JourneyNameView(journey: journey)
            
            Spacer()
            
            // DurationView
            DurationView(journey: journey)
        }
        .padding(.horizontal)
    }
}

#Preview {
    let journey = JourneyService().journeysData[0]
    
    NavigationStack {
        TitleView(journey: journey)
    }
}
