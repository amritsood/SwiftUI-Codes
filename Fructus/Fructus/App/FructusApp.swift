//
//  FructusApp.swift
//  Fructus
//
//  Created by user on 21/06/22.
//

import SwiftUI

@main
struct FructusApp: App {
    
    @AppStorage("isOnboarding") private var isOnboarding: Bool = true
    
    var body: some Scene {
        WindowGroup {
            if isOnboarding {
                OnboardingView()
            } else {
                ContentView()
            }
        }
    }
}
