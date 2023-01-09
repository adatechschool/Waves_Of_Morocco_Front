//
//  LandmarksList.swift
//  AdaSurf
//
//  Created by Karim Fraboulet on 07/01/2023.
//

import SwiftUI


struct LandmarksList: View {
    var body: some View {
        LandmarkRow(landmark: LandmarkRow_Previews.items[7])
        List(landmarks) { landmark in
            LandmarkRow(landmark: landmark)
                }
    }


struct LandmarksList_Previews: PreviewProvider {
    static var previews: some View {
        LandmarksList()
        }
    }
}


