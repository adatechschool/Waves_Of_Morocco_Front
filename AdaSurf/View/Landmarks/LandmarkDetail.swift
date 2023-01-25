import SwiftUI
import CoreLocation

struct LandmarkDetail: View {
    @EnvironmentObject var modelData: ModelData
    var landmark: Landmark

    var landmarkIndex: Int {
        modelData.landmarks.firstIndex(where: { $0.id == landmark.id })!
    }
    var body: some View {
    
        VStack{
            MapView(coordinate: landmark.coordinates.toCoordinates2d())
                .ignoresSafeArea(edges: .top)
                .frame(height: 200)
            
            CircleImage(image: landmark.image)
                .offset(y: -130)
                .padding(.bottom, -130)
            
            VStack {
                HStack {
                    Text(landmark.name)
                        .font(.title)
                    FavoriteButton(isSet: $modelData.landmarks[landmarkIndex].isFavorite)
                    
                }
                
                HStack {
                    Text(String(landmark.country))
                        .font(.subheadline)
                    Spacer()
                    Text(landmark.state)
                        .font(.subheadline)
                }
                .padding()
                .font(.subheadline)
                .foregroundColor(.secondary)
                Spacer()
                Divider()
                HStack {
                    Text("Danger")
                    Spacer()
                    Text(landmark.dangerous)
                }.padding()
                ScrollView{
                    Text("About \(landmark.name)")
                        .font(.title2)
                    Spacer()
         
                    Text(landmark.landmarkListDescription)
                        .font(.subheadline)
                        .multilineTextAlignment(.center)
                        .padding()
                    Spacer()
                }
                .padding()
            }
            .navigationTitle("Preview")
            .navigationBarTitleDisplayMode(.inline)
        }
    }

}

struct LandmarkDetail_Previews: PreviewProvider {
    static var previews: some View {
        LandmarkDetail(landmark: ModelData().landmarks[0])
    }
}

fileprivate extension Coordinates {
    func toCoordinates2d() -> CLLocationCoordinate2D {
        return CLLocationCoordinate2D(
            latitude: self.latitude,
            longitude: self.longitude
        )
    }
}
