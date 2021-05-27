//
//  Model.swift
//  adidevProject
//
//  Created by Ian Brown on 5/23/21.
//

import Foundation
import SwiftUI
struct CharacterDetails: Codable{
    let name, birthday: String
    let occupation: [String]
    let img: String
    let status, nickname: String
    let appearance: [Int]
}
typealias CharacterArray = [CharacterDetails]

extension CharacterDetails {
    static func filterChar(_ characters: [CharacterDetails], search: String) -> [CharacterDetails] {
        let filtered = characters.filter {
            $0.name.contains(search)
        }
        return filtered
    }
}

//extension Character {
//
//  static func filteredCharacter(_ charecters: [Character]) -> [Character] {
//    let filteredCharecters = charecters.filter { $0.category.contains("Breaking Bad") }
//    return filteredCharecters
//  }
