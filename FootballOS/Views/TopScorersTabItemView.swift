//
//  TopScorersTabItemView.swift
//  FootballOS
//
//  Created by Alessandro on 8/30/23.
//

import SwiftUI
import XCAFootballDataClient

struct TopScorersTabItemView: View {
    @State var selectedCompetition: Competition?
    
    var body: some View {
        NavigationSplitView {
            List(Competition.defaultCompetitions, id: \.self, selection: $selectedCompetition) {
                Text($0.name)
            }.navigationTitle("FootballOS ⚽")
        } detail: {
            if let selectedCompetition {
                TopScorersTableView(competition: selectedCompetition)
                    .id(selectedCompetition)
            } else {
                Text("Select a league")
            }
        }
    }
}

#Preview {
    TopScorersTabItemView()
}
