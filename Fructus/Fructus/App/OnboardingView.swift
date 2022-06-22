//
//  OnboardingView.swift
//  Fructus
//
//  Created by user on 22/06/22.
//

import SwiftUI

struct OnboardingView: View {
    
    //MARK :- PROPERTIES
    var fruits: [Fruit] = fruitsData
    
    //MARK :- BODY
    var body: some View {
        TabView {
            ForEach(fruits) { fruit in
                FruitCardView(fruit: fruit)
            }
        }
        .tabViewStyle(PageTabViewStyle())
        .padding(.vertical, 20)
    }
}

//MARK :- PREVIEW
struct OnboardingView_Previews: PreviewProvider {
    static var previews: some View {
        OnboardingView(fruits: fruitsData)
    }
}
