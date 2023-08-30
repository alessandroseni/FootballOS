//
//  TopScorersTableView.swift
//  FootballOS
//
//  Created by Alessandro on 8/30/23.
//

import SwiftUI
import SVGImageSwiftUI
import XCAFootballDataClient

struct TopScorersTableView: View {
    
    let competition: Competition
    @Bindable var vm = TopScorersTableObservable()
    
    var body: some View {
        Table(of: Scorer.self) {
            TableColumn("Pos") { scorer in
                HStack {
                    Text(scorer.posText).fontWeight(.bold).frame(minWidth: 20)
                    
                    
                }
            }.width(min: 264)
        } rows: {
            ForEach(vm.scorers ?? []) {
                TableRow($0)
            }
        }
        .foregroundColor(.primary)
        .navigationTitle(competition.name + " Top Scorers")
        .task(id: vm.selectedFilter.id) {
            await vm.fetchTopScorers(competition: competition)
        }
    }
}

#Preview {
    NavigationStack {
        TopScorersTableView(competition: .defaultCompetitions[1])
        
    }
}
