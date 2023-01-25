//
//  DangerousItem.swift
//  AdaSurf
//
//  Created by Delhia Gbelidji on 25/01/2023.
//

import SwiftUI

struct DangerousItem: View {
    var landmark: Landmark

    var body: some View {
        VStack(alignment: .leading) {
            landmark.image
                .renderingMode(.original)
                .resizable()
                .frame(width: 155, height: 155)
                .cornerRadius(5)
            Text(landmark.name)
                .foregroundColor(.primary)
                .font(.caption)
        }
        .padding(.leading, 15)
    }
}

struct CategoryItem_Previews: PreviewProvider {
    static var previews: some View {
        DangerousItem(landmark: ModelData().landmarks[0])
    }
}
