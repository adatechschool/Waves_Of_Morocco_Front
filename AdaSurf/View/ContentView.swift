//
//  ContentView.swift
//  AdaSurf
//
//  Created by Karim Fraboulet on 28/12/2022.
//

import SwiftUI

struct ContentView: View {
    
    var body: some View {
        LandingPage()

    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
            .environmentObject(ModelData())
    }
}
