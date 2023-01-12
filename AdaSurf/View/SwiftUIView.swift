//
//  SwiftUIView.swift
//  AdaSurf
//
//  Created by Karim Fraboulet on 12/01/2023.
//

import SwiftUI

struct SwiftUIView: View {
    var body: some View {
        ZStack{
            Image("Waves Of Morocco").resizable().frame(width: 700, height: 900).aspectRatio(contentMode: ContentMode.fill).edgesIgnoringSafeArea(.top).edgesIgnoringSafeArea(.bottom)
        }
    }
}

struct SwiftUIView_Previews: PreviewProvider {
    static var previews: some View {
        SwiftUIView()
    }
}
