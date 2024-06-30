//
//  ios_appApp.swift
//  ios-app
//
//  Created by Trenton Michael Cox on 7/18/23.
//
/*TODO: I (trenton) have some questions about the implementation details of the website.
        * wcbn.org appears to have access to a lot of information that my app needs, such as the schedule,
            what is now playing, what has played recently, and so on.
        * Wherever the API key is, once found, ensure it is properly and confidently stored.
        * That means this GitHub can no longer be public.
 */
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
