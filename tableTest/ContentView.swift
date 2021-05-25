//
//  ContentView.swift
//  tableTest
//
//  Created by Ian Brown on 5/24/21.
//

import SwiftUI
let someData = VM.init().getThePeople()
struct ContentView: View {
    //@State var isShowingCurrCharacter: Bool = false
    var body: some View {
        rootView()
    }
    
    struct ContentView_Previews: PreviewProvider {
        static var previews: some View {
            ContentView()
        }
    }
}

