//
//  MainView.swift
//  SmartGarage
//
//  Created by George Baker on 11/05/2022.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        TabView {
            IndexView()
                .tabItem {
                    Label("Garage", systemImage: "car.fill")
                }
            ScheduleView()
                .tabItem {
                    Label("Schedule", systemImage: "clock.arrow.circlepath")
                }
            LiveFeedView()
                .tabItem {
                    Label("Feed", systemImage: "video.fill")
                }
            HistoryView()
                .tabItem {
                    Label("History", systemImage: "clock.fill")
                }
            SettingsView()
                .tabItem {
                    Label("Settings", systemImage: "gear")
                }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
