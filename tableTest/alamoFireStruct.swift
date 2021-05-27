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
    
    var body: some View {
        NavigationView {
            List {
                TextField("Search", text: $searchText)
                                    .padding(7)
                                    .background(Color(.systemGray6))
                                    .cornerRadius(8)
                ForEach(0..<someData.count) { characters in
                    NavigationLink(destination: characterProfile.init(currentCharacter: CC.init().fetchCharacter(someData[characters]))) {
                        LazyHStack {
                            Image(uiImage: VM.init().urlToImage(someData[characters].img)
                            ).renderingMode(.original).resizable().frame(minWidth: 0, idealWidth: 100, maxWidth: 50.0, minHeight: 0, idealHeight: 100, maxHeight: .infinity, alignment: .center).cornerRadius(3.0)
                            Text("\(someData[characters].name)")
                        }
                    }
                }
            }
            .navigationBarTitle("Breaking Bad Characters", displayMode: NavigationBarItem.TitleDisplayMode.inline)
        }
    }
}

struct alamoTest_Previews: PreviewProvider {
    static var previews: some View {
        alamoTest()
    }
}

//class <#name#>: <#super class#> {
//    <#code#>
//}
