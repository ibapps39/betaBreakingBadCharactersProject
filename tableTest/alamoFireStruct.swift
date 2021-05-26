//
//  alamoFireStruct.swift
//  tableTest
//
//  Created by Ian Brown on 5/25/21.
//

import Foundation
import SwiftUI
import Alamofire

struct alamoTest: View {
    @State var searchText:String = ""
    var planets = ["Mercury", "Venus", "Earth", "Mars"]
    var body: some View {
        NavigationView {
            List {
                TextField("Search", text: $searchText)
                    .padding(7)
                    .background(Color(.systemGray6))
                    .cornerRadius(8)
                
                ForEach(
                    planets.filter {
                        searchText.isEmpty ||
                            $0.localizedStandardContains(searchText)
                    },
                    id: \.self
                ) { eachPlanet in
                    Text(eachPlanet)
                }
            }
        }
    }
}

struct alamoTest_Previews: PreviewProvider {
    static var previews: some View {
        alamoTest()
    }
}


struct alamoCharacter: Codable, Hashable {
    let name, birthday: String
    let occupation: [String]
    let img: String
    let status, nickname: String
    let appearance: [Int]
}

class apiViaAlamo {
    private let apiSourceUrl = URL(string: "https://breakingbadapi.com/api/characters")!
    
    //    func alamoFetch() -> alamoCharacter {
    //        AF.request(apiSourceUrl).responseDecodable(of: alamoCharacter.self)
    //    }
}
