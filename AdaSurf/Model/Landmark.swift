import Foundation
import SwiftUI
import CoreLocation


// MARK: - LandmarkListElement

struct Landmark: Decodable, Identifiable {
    let name: String
    let country: String
    let continent: String
    let id: Int
    let dangerous: String
    var isFavorite: Bool
    let state: String
    let coordinates: Coordinates
    let landmarkListDescription: String
    var imageName: String
    var image: Image {
            Image(imageName)
        }
    

    enum CodingKeys: String, CodingKey {
        case name
        case country, continent, id, dangerous, isFavorite, state, coordinates
        case landmarkListDescription = "description"
        case imageName
    }
} 



// MARK: - Coordinates
struct Coordinates: Codable {
    let longitude, latitude: Double
}

typealias LandmarkList = [Landmark]

