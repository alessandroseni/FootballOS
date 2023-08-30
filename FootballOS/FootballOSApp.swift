//
//  FootballOSApp.swift
//  FootballOS
//
//  Created by Alessandro on 8/30/23.
//

import SwiftUI

let apiKey = "3ce84d540fcb448fbaf59217fcc1b3a2"

@main
struct FootballOSApp: App {
    var body: some Scene {
        WindowGroup {
            TabView {
                StandingsTabItemView()
                    .tabItem { Label("Standings", systemImage: "table.fill") }
                
                Text("Top Scorers")
                    .tabItem { Label("Top Scorers", systemImage: "soccerball.inverse") }
            }
        }
    }
}
