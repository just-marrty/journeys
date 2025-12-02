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
            Text(journey.name)
                .font(.system(size: 18))
                .bold()
            
            Spacer()
            
            VStack {
                Text("Duration:")
                    .font(.system(size: 16))
                Text("\(journey.duration)")
                    .font(.subheadline)
            }
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
