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
            Image(journey.image)
                .resizable()
                .scaledToFit()
                .clipShape(.rect(cornerRadius: 12))
                .frame(width: 75)
            
            VStack(alignment: .leading) {
                Text(journey.name)
                    .font(.system(size: 18))
                
                Text("Duration: \(journey.duration)")
                    .font(.subheadline)
            }
        }
    }
}

#Preview {
    let journey = JourneyService().journeysData[0]
    
    NavigationStack {
        ItemView(journey: journey)
    }
}
