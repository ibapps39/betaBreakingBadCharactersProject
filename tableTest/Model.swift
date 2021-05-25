//
//  Model.swift
//  adidevProject
//
//  Created by Ian Brown on 5/23/21.
//

import Foundation
import SwiftUI
struct CharacterDetails: Codable {
    let name, birthday: String
    let occupation: [String]
    let img: String
    let status, nickname: String
    let appearance: [Int]
}
typealias CharacterArray = [CharacterDetails]

//struct occupation {
//    var s:String { (s:[String]) -> String
//        
//    }
//}
enum pickViews {
    case characterList
    case characterProfile
}

