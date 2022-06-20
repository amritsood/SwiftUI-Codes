//
//  HomeView.swift
//  Restart
//
//  Created by user on 17/06/22.
//

import SwiftUI
import Foundation

struct HomeView: View {
    
    @AppStorage("Onboarding") var isOnboardingViewActive: Bool = false
    
    @State private var isAnimating: Bool = false
    
    var body: some View {
        VStack {
            Spacer()
            
            //MARK: Header
            ZStack {
                CircleGroupView(ShapeColor: .gray, ShapeOpacity: 0.2)
                Image("character-2")
                    .resizable()
                .scaledToFit()
                .offset(y: isAnimating ? 35 : -35)
                .animation(
                    .easeInOut(duration: 4)
                    .delay(0.5)
                    .repeatForever()
                    , value: isAnimating)
            }
            
            //MARK: Center
            Text("The time that leads to mastery is dependent on intesity of our focus.")
            .font(.title3)
            .fontWeight(.light)
            .foregroundColor(.secondary)
            .multilineTextAlignment(.center)
            .padding()
            
            Spacer()
            
            //MARK: Footer
            Button {
                withAnimation(.easeOut(duration: 0.5)) {
                    self.isOnboardingViewActive = true
                    playSound(name: "success", type: "m4a")
                }
            } label: {
                Image(systemName: "arrow.triangle.2.circlepath.circle.fill")
                    .imageScale(.large)
                Text("Restart")
                    .font(.system(.title3, design: .rounded))
                    .fontWeight(.bold)
            }
            .buttonStyle(.borderedProminent)
            .buttonBorderShape(.capsule)
            .controlSize(.large)
        }
        .padding()
        .onAppear {
            isAnimating = true
        }
    }
}

struct HomeView_Previews: PreviewProvider {
    static var previews: some View {
        HomeView()
    }
}
