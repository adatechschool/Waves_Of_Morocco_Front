//
// LandmarkRow.swift
// AdaSurf
//
// Created by Karim Fraboulet on 04/01/2023.
//
import SwiftUI

struct LandmarkRow: View {
    var landmark: Landmark
    var body: some View {
        HStack {
            landmark.image
                .resizable()
                .frame(width: 50, height: 50)
                .clipShape(Circle())
                .overlay {
                    Circle().stroke(.white, lineWidth: 4)
                }
            Text(landmark.name)
            Spacer()
        }
    }
}

struct LandmarkRow_Previews: PreviewProvider {
  static var previews: some View {
    LandmarkRow(landmark: landmarks[1])
  }
}
