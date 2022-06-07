//
//  SwiftUI_ExampleApp.swift
//  SwiftUI-Example
//
//  Created by user on 07/06/22.
//

import SwiftUI

@main
struct SwiftUI_ExampleApp: App {
    
    @StateObject private var modelData = ModelData()
    
    var body: some Scene {
        WindowGroup {
            ContentView()
                .environmentObject(modelData)
        }
    }
}
