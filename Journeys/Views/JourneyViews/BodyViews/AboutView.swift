//
//  AboutView.swift
//  Journeys
//
//  Created by Martin Hrbáček on 01.12.2025.
//

import SwiftUI

struct AboutView: View {
    
    let journey: Journey
    
    var body: some View {
        VStack(alignment: .leading, spacing: 4) {
            Text("About:")
                .font(.system(size: 18))
                .bold()
            Text(journey.subDescription)
                .font(.system(size: 18))
        }
    }
}

#Preview {
    let journey = JourneyService().journeysData[0]
    
    NavigationStack {
        AboutView(journey: journey)
    }
}
