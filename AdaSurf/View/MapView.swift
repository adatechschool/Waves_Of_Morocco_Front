//
//  MapView.swift
//  AdaSurf
//
//  Created by Karim Fraboulet on 28/12/2022.
//

import SwiftUI
import MapKit

struct MapView: View {
    @State private var region = MKCoordinateRegion(
            center: CLLocationCoordinate2D(latitude: 30.545008, longitude: -9.708638),
            span: MKCoordinateSpan(latitudeDelta: 0.2, longitudeDelta: 0.2)
        )
    var body: some View {
            Map(coordinateRegion: $region)
    }
}

struct MapView_Previews: PreviewProvider {
    static var previews: some View {
        MapView()
            .previewDevice(PreviewDevice(rawValue: "iPhone 14 Pro Max"))
    }
}
