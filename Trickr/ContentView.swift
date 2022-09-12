//
//  ContentView.swift
//  Trickr
//
//  Created by Ryan Prince on 7/14/22.
//

import SwiftUI

struct ContentView: View {
    let location: Location
    
    var body: some View {
        ScrollView {
            Image(location.heroPicture)
                .resizable()
                .scaledToFit()
            
            Text(location.name)
                .font(.largeTitle)
                .bold()
                .multilineTextAlignment(.center)
            
            Text(location.country)
                .font(.title)
                .foregroundColor(.secondary)
            
            Text(location.description)
                .padding(.horizontal)
            
            Text("Did you know?")
                .font(.title3)
                .bold()
                .padding(.top)
            
            Text(location.more)
                .padding(.horizontal)
        }
        .navigationTitle("Discover")
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        Group {
            TabView {
                NavigationView {
                    ContentView(location: Locations().primary)
                }
                .tabItem {
//                    Image(systemName: "airplane.circle.fill")
                    Label("Discover", systemImage: "airplane.circle.fill")
                }
            }
        }
    }
}
