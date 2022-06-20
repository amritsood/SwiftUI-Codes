//
//  ContentView.swift
//  AsyncImage
//
//  Created by user on 17/06/22.
//

import SwiftUI

extension Image {
    
    func imageModifier() -> some View {
        self
            .resizable()
            .scaledToFit()
    }
    
    func iconModifier() -> some View {
        self
            .imageModifier()
            .frame(width: 128)
            .foregroundColor(.purple)
            .opacity(0.5)
    }
}

struct ContentView: View {
    
    private let imageURL: String = "http://credo.academy/credo-academy@3x.png"
    
    var body: some View {
        
        let url = URL(string: imageURL)
        
        /*
        AsyncImage(url: url) { image in
            image
                .imageModifier()
        } placeholder: {
            Image(systemName: "photo.circle.fill")
                .iconModifier()
        }
        .padding(40)
         */
        
        /*if let image = phase.image {
            image.imageModifier()
        } else if phase.error != nil {
            Image(systemName: "ant.circle.fill")
                .iconModifier()
        } else {
            Image(systemName: "photo.circle.fill")
                .iconModifier()
        }*/
        
        AsyncImage(url: url, transaction: Transaction.init(animation: .spring(response: 0.5, dampingFraction: 0.6, blendDuration: 0.25))) { phase in
            
            switch phase {
            case .success(let image):
                image.imageModifier()
                   // .transition(.move(edge: .bottom))
                    //.transition(.slide)
                    .transition(.scale)
            case .failure:
                Image(systemName: "ant.circle.fill")
                    .iconModifier()
            case .empty:
                Image(systemName: "photo.circle.fill")
                    .iconModifier()
            @unknown default:
                ProgressView()
            }
        }
        .padding(40)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
