//
//  ContentView.swift
//  Journeys
//
//  Created by Martin Hrbáček on 01.12.2025.
//

import SwiftUI

struct ContentView: View {
    
    @AppStorage("isDarkMode") private var isDarkMode: Bool = false
    
    @State private var search: String = ""
    @State private var filteredJourneys: [Journey] = []
    
    let journeyService = JourneyService()
    
    var body: some View {
        NavigationStack {
            VStack {
                List(filteredJourneys) { journey in
                    NavigationLink(value: journey) {
                        // ItemView
                        ItemView(journey: journey)
                    }
                }
                .listStyle(.plain)
                .searchable(text: $search)
                .animation(.default, value: search)
                .onChange(of: search) {
                    if search.isEmpty {
                        filteredJourneys = journeyService.journeysData
                    } else {
                        filteredJourneys = journeyService.journeysData.filter { journey in
                            journey.name.localizedCaseInsensitiveContains(search)
                        }
                    }
                }
                .onAppear {
                    filteredJourneys = journeyService.journeysData
                }
            }
            .navigationTitle("Journeys")
            .navigationDestination(for: Journey.self) { journey in
                JourneyView(journey: journey)
            }
            .navigationBarItems(trailing: Button(action: {
                isDarkMode.toggle()
            }, label: {
                Image(systemName: isDarkMode ? "sun.max.fill" : "moon.fill")
                    .font(.system(size: 20))
                    .foregroundStyle(isDarkMode ? .white : .black)
            }))
        }
        .preferredColorScheme(isDarkMode ? .dark : .light)
    }
}

#Preview {
    ContentView()
}
