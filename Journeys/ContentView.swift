//
//  ContentView.swift
//  Journeys
//
//  Created by Martin Hrbáček on 01.12.2025.
//

import SwiftUI

struct ContentView: View {
    
    @AppStorage("isDarkMode") private var isDarkMode: Bool = false
    
    @State private var searchText: String = ""
    
    let journeyService = JourneyService()
    
    var body: some View {
        NavigationStack {
            VStack {
                List(journeyService.search(for: searchText)) { journey in
                    NavigationLink(value: journey) {
                        // ItemView
                        ItemView(journey: journey)
                    }
                }
                .listStyle(.plain)
                .searchable(text: $searchText, prompt: "Search journey")
                .animation(.default, value: searchText)
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
            .scrollIndicators(.hidden)
        }
        .preferredColorScheme(isDarkMode ? .dark : .light)
    }
}

#Preview {
    ContentView()
}
