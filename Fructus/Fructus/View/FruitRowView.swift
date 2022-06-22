//
//  FruitRowView.swift
//  Fructus
//
//  Created by user on 22/06/22.
//

import SwiftUI

struct FruitRowView: View {
    
    let fruit: Fruit
    
    var body: some View {
        HStack {
            Image(fruit.image)
                .resizable()
                .scaledToFit()
                .frame(width: 80, height: 80, alignment: .center)
                .background(
                    LinearGradient.init(colors: fruit.gradientColors, startPoint: .top, endPoint: .bottom)
                )
                .shadow(color: .black, radius: 3, x: 2, y: 2)
                .cornerRadius(10)
            
            VStack(alignment: .leading, spacing: 5) {
                Text(fruit.title)
                    .font(.title2)
                    .fontWeight(.bold)
                Text(fruit.headline)
                    .font(.caption)
                    .foregroundColor(.secondary)
            }
        }
    }
}

struct FruitRowView_Previews: PreviewProvider {
    static var previews: some View {
        FruitRowView(fruit: fruitsData[0])
            .previewLayout(.sizeThatFits)
            .padding()
    }
}
