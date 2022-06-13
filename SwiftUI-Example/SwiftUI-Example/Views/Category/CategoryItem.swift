//
//  CategoryItem.swift
//  SwiftUI-Example
//
//  Created by user on 10/06/22.
//

import SwiftUI

struct CategoryItem: View {
    
    var landmark: Landmark
    
    var body: some View {
        VStack(alignment: .leading) {
            landmark
                .image
                .renderingMode(.original)
                .resizable()
                .frame(width: 150, height: 150)
                .cornerRadius(5)
            Text(landmark.name)
                .foregroundColor(.primary)
                .font(.caption)
                
        }
        .padding(.leading, 15)
    }
}

struct CategoryItem_Previews: PreviewProvider {
    static var previews: some View {
        let landmark = ModelData().landmarks.first!
        CategoryItem(landmark: landmark)
    }
}
