//
//  ItemView.swift
//  Journeys
//
//  Created by Martin Hrbáček on 01.12.2025.
//

import SwiftUI

struct ItemView: View {
    
    let journey: Journey
    
    var body: some View {
        HStack(alignment: .top) {
            // ItemImageView
            ItemImageView(journey: journey)
            
            // JourneyDurationView
            ItemNameDurationView(journey: journey)
        }
    }
}

#Preview {
    let journey = JourneyService().journeysData[0]
    
    NavigationStack {
        ItemView(journey: journey)
    }
}
