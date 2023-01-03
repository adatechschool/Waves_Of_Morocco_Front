//
//  CircleImage.swift
//  AdaSurf
//
//  Created by Karim Fraboulet on 28/12/2022.
//

import SwiftUI

struct CircleImage: View {
    var body: some View {
        Image("TaghazoutSwift")
            .frame(width: 300.0, height: 300.0)
            .clipShape(Circle())
            .overlay {
                Circle().stroke(.white, lineWidth: 2)
                
        }
        .shadow(radius: 7)
    }
}

struct CircleImage_Previews: PreviewProvider {
    static var previews: some View {
        CircleImage()
            .previewDevice(PreviewDevice(rawValue: "iPhone 14 Pro Max"))
    }
}
