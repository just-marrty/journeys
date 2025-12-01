//
//  ItemImageView.swift
//  Journeys
//
//  Created by Martin Hrbáček on 01.12.2025.
//

import SwiftUI

struct ItemImageView: View {
    
    let journey: Journey
    
    var body: some View {
        Image(journey.image)
            .resizable()
            .scaledToFit()
            .clipShape(.rect(cornerRadius: 12))
            .frame(width: 75)
    }
}

#Preview {
    let journey = JourneyService().journeysData[0]
    
    NavigationStack {
        ItemImageView(journey: journey)
    }
}
