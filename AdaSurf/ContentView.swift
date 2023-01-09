//
//  ContentView.swift
//  AdaSurf
//
//  Created by Karim Fraboulet on 28/12/2022.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack {
            MapView()
                .ignoresSafeArea(edges: .top)
                .frame(height: 300)
            
            CircleImage()
                .offset(y: -130)
                .padding(.bottom, -130)
            
            VStack(alignment: .leading) {
                Text("Taghazout")
                    .fontWeight(.semibold)
                    .multilineTextAlignment(.center)
                    .font(.title)
                .foregroundColor(.black)
                HStack {
                    Text("Morocco")
                        .font(.subheadline)
                    Spacer()
                    Text("North Africa")
                        .font(.subheadline)
                        .multilineTextAlignment(.center)
                }
                
                .font(.subheadline)
                .foregroundColor(.secondary)
                Spacer()
                Text("About Taghazout")
                    .font(.title2)
                Spacer()
                Text("Taghazout (Berber: ⵜⴰⵖⴰⵣⵓⵜ, Taɣazut; Arabic: تاغازوت) is a small fishing village 19 km (12 mi) north of the city of Agadir in southwestern Morocco. The inhabitants are mostly of Berber origin. Fishing, tourism, and the production of Argan oil being the main source of income. In recent years, tourism has been increasing in importance to the local economy and it is a popular surfing destination.")
                    .font(.subheadline)
                    .multilineTextAlignment(.leading)
                
            }
            .padding()
            
            Spacer()
        }
    }
}

var spotsInfo: [String: Any] = [
    "latitude" : 30.545008,
    "longitude" : -9.708638,
    "image" : "TaghazoutSwift",
    "city": "Taghazout",
    "country": "Morocco",
    "continent": "North Africa",
    "about": ["About Taghazout",
    "Taghazout (Berber: ⵜⴰⵖⴰⵣⵓⵜ, Taɣazut; Arabic: تاغازوت) is a small fishing village 19 km (12 mi) north of the city of Agadir in southwestern Morocco. The inhabitants are mostly of Berber origin. Fishing, tourism, and the production of Argan oil being the main source of income. In recent years, tourism has been increasing in importance to the local economy and it is a popular surfing destination."]
]

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
            //.previewDevice(PreviewDevice(rawValue: "iPhone 14 Pro Max"))
    }
}
