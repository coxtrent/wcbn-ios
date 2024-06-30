//
//  NavBar.swift
//  ios-app
//
//  Created by Trenton Cox on 6/29/24.
//

import SwiftUI
struct NavBar: View {
    
    var body: some View {
        HStack {
            // First button
            NavigationLink(destination: ScheduleView()) {
                ZStack {
                    Image("coin")
                        .resizable()
                        .frame(width: 50, height: 50)
                    Text("Schedule")
                        .foregroundColor(Color(white: 1))
                }
            } // End First Button
            // Second button
            NavigationLink(destination: RecentView()) {
                ZStack {
                    Image("coin2")
                        .resizable()
                        .frame(width: 50, height: 50)
                    Text("Recent")
                        .foregroundColor(Color(white: 1))
                }
            } // End Second Button
            // Third button: TEMPORARILY DISABLED
            // TODO: Fix the issue where wrapping each view in NavigationView causes a double navigation action.
            NavigationLink(destination: RadioView()) {
                ZStack {
                    Image("coin3")
                        .resizable()
                        .frame(width: 50, height: 50)
                    Text("Radio")
                        .foregroundColor(Color(white: 1))
                }
            } // End Third Button
            NavigationLink(destination: FavoritesView()) {
                ZStack {
                    Image("coin2")
                        .resizable()
                        .frame(width: 50, height: 50)
                    Text("Favorites")
                        .foregroundColor(Color(white: 1))
                }
            } // End Fourth Button
            NavigationLink(destination: SettingsView()) {
                ZStack {
                    Image("coin")
                        .resizable()
                        .frame(width: 50, height: 50)
                    Text("Settings")
                        .foregroundColor(Color(white: 1))
                }
            } // End Fifth Button
        }
    }
}
