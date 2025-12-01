//
//  ItemNameDurationView.swift
//  Journeys
//
//  Created by Martin Hrbáček on 01.12.2025.
//

import SwiftUI

struct ItemNameDurationView: View {
    
    let journey: Journey
    
    var body: some View {
        VStack(alignment: .leading) {
            // ItemNameView
            ItemNameView(journey: journey)
            
            // ItemDurationView
            ItemDurationView(journey: journey)
        }
    }
}

#Preview {
    let journey = JourneyService().journeysData[0]
    
    NavigationStack {
        ItemNameDurationView(journey: journey)
    }
}
