//
//  ItemNameView.swift
//  Journeys
//
//  Created by Martin Hrbáček on 01.12.2025.
//

import SwiftUI

struct ItemNameView: View {
    
    let journey: Journey
    
    var body: some View {
        Text(journey.name)
            .font(.system(size: 18))
    }
}

#Preview {
    let journey = JourneyService().journeysData[0]
    
    NavigationStack {
        ItemNameView(journey: journey)
    }
}
