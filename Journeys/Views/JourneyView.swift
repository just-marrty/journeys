//
//  JourneyView.swift
//  Journeys
//
//  Created by Martin Hrbáček on 01.12.2025.
//

import SwiftUI

struct JourneyView: View {
    
    @Environment(\.dismiss) private var dismiss
    
    let journey: Journey
    
    var body: some View {
        ScrollView {
            VStack {
                // ImageView
                ImageView(journey: journey)
                
                // TitleView
                TitleView(journey: journey)
                
                Divider()
                    .padding(.horizontal)
                
                // BodyView
                BodyView(journey: journey)
                
                Spacer()
            }
        }
        .ignoresSafeArea()
        .navigationBarBackButtonHidden(true)
        .toolbar {
            ToolbarItem(placement: .navigationBarLeading) {
                Button {
                    dismiss()
                } label: {
                    Image(systemName: "chevron.left")
                        .foregroundStyle(.black)
                        .bold()
                    Text("Journeys")
                        .foregroundStyle(.black)
                        .bold()
                }
            }
        }
    }
}

#Preview {
    let journey = JourneyService().journeysData[0]
    
    NavigationStack {
        JourneyView(journey: journey)
    }
}
