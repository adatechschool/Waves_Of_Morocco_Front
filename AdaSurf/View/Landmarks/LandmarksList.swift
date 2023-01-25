//
// LandmarksList.swift
// AdaSurf
//
// Created by Karim Fraboulet on 07/01/2023.
//

import SwiftUI

struct LandmarksList: View {
    @EnvironmentObject var modelData: ModelData
    @State private var showFavoritesOnly = false
    var filteredLandmarks: [Landmark] {
        modelData.landmarks.filter { landmark in
                (!showFavoritesOnly || landmark.isFavorite)
            }
        }

    var body: some View {
        NavigationView {
            List {
                Toggle(isOn: $showFavoritesOnly) {
                    Text("Favorites only")
                    
                }
                ForEach(filteredLandmarks) { landmark in
                    NavigationLink {
                        LandmarkDetail(landmark: landmark)
                    } label: {
                        LandmarkRow(landmark: landmark)
                    }
                }
            }
          
            .navigationTitle("Waves Of Morocco")
        }
    }
}

struct LandmarkList_Previews: PreviewProvider {
    static var previews: some View {
        LandmarksList()
    }
}
