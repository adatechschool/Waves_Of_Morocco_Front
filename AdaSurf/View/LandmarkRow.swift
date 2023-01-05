//
//  LandmarkRow.swift
//  AdaSurf
//
//  Created by Karim Fraboulet on 04/01/2023.
//

import SwiftUI

struct LandmarkRow: View {
    let landmark: LandmarkListElement

    var body: some View {
        HStack {
            landmark.image
                .resizable()
                .frame(width: 50, height: 50)
            Text("\(landmark.name)")
        }
    }
}

struct LandmarkRow_Previews: PreviewProvider {
    static let items: LandmarkList = FileLoader.load("landmarkData.json")
    static var previews: some View {
        LandmarkRow(landmark: LandmarkRow_Previews.items[0])
    }
}
