//
//  MainView.swift
//  hackathon
//
//  Created by Christopher Woods on 10/21/23.
//

import SwiftUI

struct MainView: View {
    @State private var selectedTab = 0 
    var body: some View {
        TabView(selection: $selectedTab) {
            EnglishTest()
                .tabItem {
                    Image(systemName: "keyboard")
                    Text("Writing")
                }
                .tag(3)
            
            ContentView()
                .tabItem {
                    Image(systemName: "note.text")
                    Text("Questions")
                }
                .tag(2)
            
             
            
            ProfileView()
                .tabItem {
                    Image(systemName: "house")
                    Text("Home")
                }
                .tag(4)
            HomeScreen()
                .tabItem {
                    Image(systemName: "arrow.clockwise")
                    Text("Progress")
                }
                .tag(0)
            ProfileView()
                .tabItem {
                    Image(systemName: "gearshape.fill")
                    Text("Settings")
                }
                .tag(5)
        }
        .accentColor(.black)
        .onAppear {
            UITabBar.appearance().unselectedItemTintColor = .black
        }
    }
}



#Preview {
    MainView()
}
