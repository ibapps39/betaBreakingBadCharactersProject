//
//  getData.swift
//  tableTest
//
//  Created by Ian Brown on 5/24/21.
//

import Foundation
class ApiService: NSObject {
    private let apiSourceUrl = URL(string: "https://breakingbadapi.com/api/characters")!
    
    //callsAPI
    ///@escaping (bbCharacters)->() is calling an instance of bbCharacters that can outlive the closure
    func apiGetCharacters()->CharacterArray {
        
        if let urlData = try? Data(contentsOf: apiSourceUrl) {
            let decoder = JSONDecoder()
            let charData = try! decoder.decode(CharacterArray.self, from: urlData)
            return charData
        }
        else {
            return CharacterArray.init()
        }
        
        
//        URLSession.shared.dataTask(with: apiSourceUrl) {
//            (data, urlResponse, error) in
//            if let data = data {
//                let decoder = JSONDecoder()
//                let CharacterData = try! decoder.decode([CharacterDetails].self, from: data)
//                completion(CharacterData)
//            }
//        }.resume()
//    }
}
}
