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
//    let memoizedFibonacci = recursiveMemoize { fibonacci, number in
//        number < 2 ? number : fibonacci(number - 1) + fibonacci(number - 2)
//    }
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
            .navigationBarTitle("Breaking Bad Characters", displayMode: NavigationBarItem.TitleDisplayMode.inline)
        }
    }
}
//func memoize<Input: Hashable, Output>(_ function: @escaping (Input) -> Output) -> (Input) -> Output {
//    // our item cache
//    var storage = [Input: Output]()
//    
//    // send back a new closure that does our calculation
//    return { input in
//        if let cached = storage[input] {
//            return cached
//        }
//        
//        let result = function(input)
//        storage[input] = result
//        return result
//    }
//}
//func recursiveMemoize<Input: Hashable, Output>(_ function: @escaping ((Input) -> Output, Input) -> Output) -> (Input) -> Output {
//    // our item cache
//    var storage = [Input: Output]()
//    var memo: ((Input) -> Output)!
//    
//    memo = { input in
//        if let cached = storage[input] {
//            return cached
//        }
//        
//        let result = function(memo, input)
//        storage[input] = result
//        return result
//    }
//    return memo
//}


