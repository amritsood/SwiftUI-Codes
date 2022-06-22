//
//  StartButtonView.swift
//  Fructus
//
//  Created by user on 22/06/22.
//

import SwiftUI

struct StartButtonView: View {
    
    @AppStorage("isOnboarding") private var isOnboarding: Bool = true

    
    var body: some View {
        Button {
            isOnboarding = false 
        } label: {
            HStack {
                Text("Start")
                Image(systemName: "arrow.right.circle")
                    .imageScale(.large)
            }
        }
        .padding(
            EdgeInsets(top: 8, leading: 16, bottom: 8, trailing: 16)
        )
        .background(
            Capsule()
                .stroke(.white, lineWidth: 1.25)
        )
        .accentColor(.white)
    }
}

struct StartButtonView_Previews: PreviewProvider {
    static var previews: some View {
        StartButtonView()
            .preferredColorScheme(.dark)
            .previewLayout(.sizeThatFits)
    }
}
