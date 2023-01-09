//
// LandmarksList.swift
// AdaSurf
//
// Created by Karim Fraboulet on 07/01/2023.
//
import SwiftUI

struct LandmarksList: View {
    var body: some View {
      List(landmarks) { landmark in
        LandmarkRow(landmark: landmark)
      }
    }
  }

struct LandmarkList_Previews: PreviewProvider {
    static var previews: some View {
      LandmarksList()
    }
  }
