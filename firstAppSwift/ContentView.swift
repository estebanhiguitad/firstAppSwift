//
//  ContentView.swift
//  firstAppSwift
//
//  Created by Esteban Higuita on 11/08/21.
//

import SwiftUI
import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack{
            Button("Hello, SwiftUI!") {
                let seq = 1...4
                seq.map { $0 }
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
