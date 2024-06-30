//
//  File.swift
//  ios-app
//
//  Created by Trenton Cox on 6/30/24.
//

import SwiftUI

class NavigationStateManager: ObservableObject {
    @Published var currentView: String = "RadioView"

    var isRadioViewActive: Binding<Bool> {
        Binding(
            get: { self.currentView == "RadioView" },
            set: { isActive in
                // Update currentView based on whether isActive is true or false
                self.currentView = isActive ? "RadioView" : "OtherView"
            }
        )
    }
}
