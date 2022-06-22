//
//  ContentView.swift
//  Fructus
//
//  Created by user on 21/06/22.
//

import SwiftUI

struct ContentView: View {
    
    let fruits: [Fruit] = fruitsData
    
    var body: some View {
        NavigationView {
            List {
                ForEach(fruits.shuffled()) { item in
                    FruitRowView(fruit: item)
                }
                .padding(.vertical, 10)
            }
            .navigationTitle("Fruits")
           // .navigationBarTitleDisplayMode(.inline)
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
