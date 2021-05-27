//
//  characterProfile.swift
//  tableTest
//
//  Created by Ian Brown on 5/24/21.
//

import SwiftUI
struct characterProfile: View {
    @State var currentCharacter:CharacterDetails = someData.first!
    @State var convertedApperances:String = (someData.first?.appearance.map{String($0)}.joined(separator: ", "))!
    var body: some View {
        
        VStack {
            Image(uiImage: VM.init().urlToImage(currentCharacter.img)).resizable()
            Text("Name: \(currentCharacter.name)")
            Text("\(currentCharacter.occupation.joined(separator: "\n"))")
            Text("\(currentCharacter.status)")
            Text("Nickename: \(currentCharacter.nickname)")
            Text("Appears in Seasons: \(convertedApperances)")
            /*
             Image
             Name
             Occupation
             Status
             Nickname
             Season appearance

             */
            Spacer()
        }
    }
}

struct characterProfile_Previews: PreviewProvider {
    static var previews: some View {
        characterProfile()
    }
}
