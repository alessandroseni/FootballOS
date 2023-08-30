//
//  ContentView.swift
//  FootballOS
//
//  Created by Alessandro on 8/30/23.
//

import SwiftUI
import RealityKit
import RealityKitContent

struct ContentView: View {
    var body: some View {
        VStack {
            Model3D(named: "Scene", bundle: realityKitContentBundle)
                .padding(.bottom, 50)

            Text("Hello, FootballOS!")
        }
        .padding()
    }
}

#Preview(windowStyle: .automatic) {
    ContentView()
}
