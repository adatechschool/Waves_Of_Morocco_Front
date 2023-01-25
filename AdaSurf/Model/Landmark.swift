import Foundation
import SwiftUI
import CoreLocation


// MARK: - LandmarkListElement

struct Landmark: Decodable, Identifiable {
    let name: String
    let country: String
    let continent: String
    let id: Int
    var isFeatured: Bool
    var isFavorite: Bool
    let state: String
    let coordinates: Coordinates
    let landmarkListDescription: String
    
    var dangerous: Dangerous
    enum Dangerous: String, CaseIterable, Codable {
        case begginer = "Begginer"
        case intermediate = "Intermediate"
        case expert = "Expert"
    }
    
    private var imageName: String
    var image: Image {
        Image(imageName)
    }
    var featureImage: Image? {
        isFeatured ? Image(imageName + "_feature") : nil
    }
    
    enum CodingKeys: String, CodingKey {
        case name
        case country, continent, id, dangerous, isFeatured, isFavorite, state, coordinates
        case landmarkListDescription = "description"
        case imageName
    }
} 



// MARK: - Coordinates
struct Coordinates: Codable {
    let longitude, latitude: Double
}

typealias LandmarkList = [Landmark]

