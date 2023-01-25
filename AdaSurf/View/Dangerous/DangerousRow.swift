//
//  DangerousRow.swift
//  AdaSurf
//
//  Created by Delhia Gbelidji on 25/01/2023.
//

import SwiftUI

struct DangerousRow: View {
    var isDangerous: String
    var items: [Landmark]

    var body: some View {
        VStack(alignment: .leading) {
            Text(isDangerous)
                .font(.headline)
                .padding(.leading, 15)
                .padding(.top, 5)

            ScrollView(.horizontal, showsIndicators: false) {
                HStack(alignment: .top, spacing: 0) {
                    ForEach(items) { landmark in
                        NavigationLink {
                            LandmarkDetail(landmark: landmark)
                        } label: {
                            DangerousItem(landmark: landmark)
                        }
                    }
                }
            }
            .frame(height: 185)
        }
    }
}

struct CategoryRow_Previews: PreviewProvider {
    static var landmarks = ModelData().landmarks

    static var previews: some View {
        DangerousRow(
            isDangerous: landmarks[0].dangerous.rawValue,
            items: Array(landmarks.prefix(4))
        )
    }
}
