//
//  NavBar.swift
//  ios-app
//
//  Created by Trenton Cox on 6/29/24.
//

import SwiftUI
struct NavBar: View {
    @EnvironmentObject var navigationStateManager: NavigationStateManager
    
    var body: some View {
            VStack {
                // First button
                NavigationLink(destination: ScheduleView()) {
                    ZStack {
                        Image("coin")
                            .resizable()
                            .frame(width: 75, height: 75)
                        Text("Schedule")
                            .foregroundColor(Color(white: 1))
                    }
                } // End First Button
                // Second button
                NavigationLink(destination: RecentView()) {
                    ZStack {
                        Image("coin2")
                            .resizable()
                            .frame(width: 75, height: 75)
                        Text("Recent")
                            .foregroundColor(Color(white: 1))
                    }
                } // End Second Button
                NavigationLink(destination: FavoritesView()) {
                    ZStack {
                        Image("coin3")
                            .resizable()
                            .frame(width: 75, height: 75)
                        Text("Favorites")
                            .foregroundColor(Color(white: 1))
                    }
                } // End Fourth Button
                NavigationLink(destination: SettingsView()) {
                    ZStack {
                        Image("coin")
                            .resizable()
                            .frame(width: 75, height: 75)
                        Text("Settings")
                            .foregroundColor(Color(white: 1))
                    }
                } // End Fifth Button
            }
    }
}
