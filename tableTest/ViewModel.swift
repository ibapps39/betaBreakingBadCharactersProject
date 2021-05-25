//
//  ViewModel.swift
//  tableTest
//
//  Created by Ian Brown on 5/24/21.
//

import Foundation
import SwiftUI
class VM {
    
    init() {
        
    }

    func getThePeople() -> CharacterArray {
        let callAPI = ApiService.init().apiGetCharacters()
        return callAPI
    }
    func urlToImage(_ image: String) -> UIImage {
        let imgStringUrl = image
        let imgUrl = (URL(string: imgStringUrl))!
        let imgData = try? Data(contentsOf: imgUrl)
        let convertedImage = UIImage(data: imgData!)!
        return convertedImage
    }
}

struct rootView: View {
        var body: some View {
        NavigationView {
            List {
                ForEach(0..<someData.count) { characters in
                    NavigationLink(destination: characterProfile.init(currentCharacter: CC.init().fetchCharacter(someData[characters]))) {
                        HStack {
                            Image(uiImage: VM.init().urlToImage(someData[characters].img)
                            ).renderingMode(.original).resizable().frame(minWidth: 0, idealWidth: 100, maxWidth: 50.0, minHeight: 0, idealHeight: 100, maxHeight: .infinity, alignment: .center).cornerRadius(3.0)
                            Text("\(someData[characters].name)")
                        }
                    }
                }
            }
            .navigationBarTitle(Text("Breaking Bad Characters"))
        }
    }
}


