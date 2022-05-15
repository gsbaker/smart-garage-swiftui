//
//  MainView.swift
//  SmartGarage
//
//  Created by George Baker on 11/05/2022.
//

import SwiftUI

struct MainView: View {
    var body: some View {
        TabView {
            ContentView()
                .tabItem {
                    Label("Garage", systemImage: "rectangle.split.3x3.fill")
                }
            ScheduleView()
                .tabItem {
                    Label("Schedule", systemImage: "line.3.horizontal")
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

struct MainView_Previews: PreviewProvider {
    static var previews: some View {
        MainView()
    }
}
