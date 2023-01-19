//
//  SwiftUIView.swift
//  AdaSurf
//
//  Created by Karim Fraboulet on 12/01/2023.
//

import SwiftUI

extension Color {
    static let darkBlue = Color(red: 0 / 34, green: 51 / 255, blue: 102 / 255)
    static let background = Color(red: 215 / 255, green: 155 / 255, blue: 55 / 255)
}

struct SwiftUIView: View {

    var body: some View {
        GeometryReader { geo in
            LinearGradient(colors: [.blue, .yellow], startPoint: .topLeading, endPoint: .bottomTrailing)
                    .ignoresSafeArea()
            Image("logoWOM")
                .resizable()
                .frame(width: geo.size.width * 1, height: geo.size.height * 0.5)
                .frame(height: geo.size.height)
            Text("Waves Of Morocco")
                .frame(width: 400, height: 1150)
                .font(Font.title.weight(.semibold))
                .foregroundColor(Color.darkBlue)
        }
    }
}

struct SwiftUIView_Previews: PreviewProvider {
    static var previews: some View {
        SwiftUIView()
    }
}
