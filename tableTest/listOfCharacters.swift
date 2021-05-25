//
//  listOfCharacters.swift
//  tableTest
//
//  Created by Ian Brown on 5/24/21.
//

import SwiftUI

struct listOfCharacters: View {
    let someData = VM.init().getThePeople()
    let CV = ContentView.init()
    var body: some View {
        
        NavigationView {
            List {
                ForEach(0..<someData.count) { characters in
                    Button(
                        action: {
                            //CV.isShowingCurrCharacter.toggle()
                            characterProfile.init(currentCharacter: CC.init().fetchCharacter(someData[characters]))
                            //CV.viewCase = .characterProfile
                        },
                        label: {
                            HStack {
                                Image(uiImage: VM.init().urlToImage(someData[characters].img)
                                ).renderingMode(.original).resizable().frame(minWidth: 0, idealWidth: 100, maxWidth: 50.0, minHeight: 0, idealHeight: 100, maxHeight: .infinity, alignment: .center).cornerRadius(3.0)
                                Text("\(someData[characters].name)")
                            }
                        })
                }
            }
            .listStyle(GroupedListStyle.init())
        }
    
    }
}

struct listOfCharacters_Previews: PreviewProvider {
    static var previews: some View {
        listOfCharacters()
    }
}
