//
//  ContentView.swift
//  zonk
//
//  Created by Nikita Tikhonyuk on 25.01.2023.
//

import SwiftUI

//Main screen
struct ContentView: View {
    
    @State private var username = "Default Person"
    
    var body: some View {
        
        NavigationView {
            VStack {
                NavigationLink(destination: GameScreenView()) {
                    Text("Start game")
                }
                
                NavigationLink(destination: ModalRulesView()) {
                    Text("Rules")
                }
            }
            
        }
        
    }
}

//Preview
struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
