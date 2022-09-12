//
//  TrickrApp.swift
//  Trickr
//
//  Created by Ryan Prince on 7/14/22.
//

import SwiftUI

@main
struct TrickrApp: App {
    @StateObject var locations = Locations()
    
    var body: some Scene {
        WindowGroup {
            TabView {
                NavigationView {
                    ContentView(location: locations.primary)
                }
                .tabItem {
                    Label("Discover", systemImage: "airplane.circle.fill")
                }
                
                NavigationView {
                    WorldView()
                }
                .tabItem {
                    Label("Locations", systemImage: "star.fill")
                }
                
                NavigationView {
                    TipsView()
                }
                .tabItem {
                    Label("Tips", systemImage: "list.bullet")
                }
            }
            .environmentObject(locations)
        }
    }
}
