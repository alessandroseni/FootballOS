//
//  FootballOSApp.swift
//  FootballOS
//
//  Created by Alessandro on 8/30/23.
//

import SwiftUI

@main
struct FootballOSApp: App {
    var body: some Scene {
        WindowGroup {
            TabView {
                StandingsTabItemView()
                    .tabItem { Label("Standings", systemImage: "table.fill") }
                
                TopScorersTabItemView()
                    .tabItem { Label("Top Scorers", systemImage: "soccerball.inverse") }
            }
        }
    }
}
