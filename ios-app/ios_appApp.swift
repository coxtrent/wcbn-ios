//
//  ios_appApp.swift
//  ios-app
//
//  Created by Trenton Michael Cox on 7/18/23.
//

import SwiftUI

@main
struct ios_appApp: App {
    var navigationStateManager = NavigationStateManager()
    
    var body: some Scene {
        WindowGroup {
            RadioView()
                .environmentObject(NavigationStateManager())
                .environmentObject(AudioPlayerManager.shared) // instantiate audio player as @EnvironmentObject
        }
    }
}
