/*
See LICENSE folder for this sample’s licensing information.

Abstract:
The model for an individual Patient.
*/

import Foundation
import SwiftUI
import Alamofire

struct Cat: Decodable, Identifiable, Hashable {
    let id: Int?
    let name, gender, age, welcomeDescription: String
    let breed, itype, status, arrivalDate: String
    let arrivalDetails, medicalHistory, vaccinations: String
    let isMicrochipped: Bool
    let fleaControlDate, dewormingDate, fivFelvDate: String
    let specialNeeds: String?
    let personality: [Int]
    let morePersonality, comments, personalExp: String?

    enum CodingKeys: String, CodingKey, CaseIterable, Codable, Hashable {
        case id
        case name, gender, age
        case welcomeDescription = "description"
        case breed, itype, status
        case arrivalDate = "arrival_date"
        case arrivalDetails = "arrival_details"
        case medicalHistory = "medical_history"
        case vaccinations
        case isMicrochipped = "is_microchipped"
        case fleaControlDate = "flea_control_date"
        case dewormingDate = "deworming_date"
        case fivFelvDate = "fiv_felv_date"
        case specialNeeds = "special_needs"
        case personality
        case morePersonality = "more_personality"
        case comments
        case personalExp = "personal_exp"
    }
}

typealias CatList2 = [Cat]



/*
import SwiftUI
import CoreLocation

//struct Cat: Hashable, Codable, Identifiable {
struct Cat: Decodable, Identifiable {
    let id: Int?
    var name: String
    var gender: [choice]
    var age: Decimal
    var welcomeDescription: String
    var breed: String
    var itype: [choice]
    var status: [choice]
    var arrivalDate: Date
    var arrivalDetails: String
    var medicalHistory: String
    var vaccinations: String
    var isMicrochipped: Bool
    var fleaControlDate: Date
    var dewormingDate: Date
    var fivFelvDate: Date
    var specialNeeds: String
    var personality: [multipleChoice]
    var morePersonality: String
    var comments: String
    var personalExp: String
    
    enum Category: String, CaseIterable, Codable, Hashable {
        case name
        case gender = "gender"
        case age
        case welcomeDescription = "description"
        case breed
        case itype = "itype"
        case status = "status"
        case arrivalDate = "arrival_date"
        case arrivalDetails = "arrival_details"
        case medicalHistory = "medical_history"
        case vaccinations
        case isMicrochipped = "is_microchipped"
        case fleaControlDate = "flea_control_date"
        case dewormingDate = "deworming_date"
        case fivFelvDate = "fiv_felv_date"
        case specialNeeds = "special_needs"
        case personality = "personality"
        case morePersonality = "more_personality"
        case comments
        case personalExp = "personal_exp"
        case choice = "choices"
        case multipleChoice = "multiple choice"
        case value
        case displayName = "display_name"
        
    }
}

struct choice: Decodable {
    var value: String
    var displayName: String
}
struct multipleChoice: Decodable {
    var value: Int
    var displayName: String
}



typealias CatList2 = [Cat]
*/
