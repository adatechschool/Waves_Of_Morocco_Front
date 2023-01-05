import Foundation

// MARK: - LandmarkListElement
struct LandmarkListElement: Codable {
    let name: String
    let country: Country
    let continent: Continent
    let id: Int
    let dangerous: Int
    let isFeatured, isFavorite: Bool
    let state: String?
    let coordinates: Coordinates
    let landmarkListDescription: String
    let imageName: String
    let park: String?

    enum CodingKeys: String, CodingKey {
        case name
        case country, continent, id, dangerous, isFeatured, isFavorite, state, coordinates
        case landmarkListDescription = "description"
        case imageName, park
    }
}

enum Continent: String, Codable {
    case northAfrica = "North Africa"
}

// MARK: - Coordinates
struct Coordinates: Codable {
    let longitude, latitude: Double
}

enum Country: String, Codable {
    case morocco = "Morocco"
}

typealias LandmarkList = [LandmarkListElement]
