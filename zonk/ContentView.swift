//
//  ContentView.swift
//  zonk
//
//  Created by Никита Тихонюк on 25.01.2023.
//

import SwiftUI

struct ContentView: View {
    
    @State private var username = "Default Person"
    
    var body: some View {
        VStack {
            Spacer()
            Image(systemName: "person.fill")
            Text("\(username)")
            Spacer()
            Text("Start game")
            Text("Rules")
            Text("Records")
            Spacer()
        }
        .padding()
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
