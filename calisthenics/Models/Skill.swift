
import Foundation


class Skill: Decodable, Identifiable{
    
    var id: UUID?
    var name: String
    var featured: Bool
    var image: String
    var difficulty: Int
    var requirements: [String]
    var progression: [String]
    var regressions: [String]
    var instructions: [String]
    var method: [String]
    
}
