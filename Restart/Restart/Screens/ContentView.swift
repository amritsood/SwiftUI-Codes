//
//  ContentView.swift
//  Restart
//
//  Created by user on 17/06/22.
//

import SwiftUI

struct ContentView: View {
    
    @AppStorage("Onboarding") var isOnboardingViewActive: Bool = true
    
    var body: some View {
        ZStack {
            if isOnboardingViewActive {
                OnboardingView()
            } else {
                HomeView()
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView().previewDevice("iPhone 13")
    }
}
