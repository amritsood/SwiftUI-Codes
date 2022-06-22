//
//  FruitCardView.swift
//  Fructus
//
//  Created by user on 21/06/22.
//

import SwiftUI

struct FruitCardView: View {
    
    //MARK: - PROPERTIES
    var fruit: Fruit
    @State private var isAnimating: Bool = false
    
    //MARK: - BODY
    var body: some View {
        ZStack {
           
            VStack(spacing: 20) {
                
                Image(fruit.image)
                    .resizable()
                    .scaledToFit()
                    .shadow(color: .black
                                   .opacity(0.5)
                            , radius: 8, x: 2, y: 2)
                    .scaleEffect(isAnimating ? 1 : 0.6)
                
                Text(fruit.title)
                    .foregroundColor(.white)
                    .font(.largeTitle)
                    .fontWeight(.heavy)
                    .shadow(color: .black
                                   .opacity(0.5)
                            , radius: 2, x: 2, y: 2)
                
                Text(fruit.headline)
                    .foregroundColor(.white)
                    .padding(.horizontal, 16)
                    .multilineTextAlignment(.center)
                    .frame(maxWidth: 480)
                
                StartButtonView()
            }
        }
        .onAppear {
            withAnimation(.linear(duration: 0.5)) {
                isAnimating = true
            }
        }
        .frame(minWidth:0, maxWidth: .infinity, minHeight: 0, maxHeight: .infinity, alignment: .center)
        .background(
            LinearGradient(colors: fruit.gradientColors, startPoint: .top, endPoint: .bottom)
                .cornerRadius(20)
        )
        .cornerRadius(20)
        .padding(.horizontal, 20)
    }
}

//MARK: PREVIEW
struct FruitCardView_Previews: PreviewProvider {
    static var previews: some View {
        FruitCardView(fruit: fruitsData[0])
            .previewLayout(.fixed(width: 320, height: 640))
    }
}
