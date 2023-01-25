//
//  AdaSurfApp.swift
//  AdaSurf
//
//  Created by Karim Fraboulet on 28/12/2022.
//

import SwiftUI

@main
struct LandmarksApp: App {
    @StateObject private var modelData = ModelData()

    var body: some Scene {
        WindowGroup {
            ContentView()
                .environmentObject(modelData)
        }
    }
}
