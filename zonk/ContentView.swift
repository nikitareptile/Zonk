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
                Spacer()
                VStack {
                    Text("Zonk")
                        .font(.largeTitle)
                        .fontWeight(.black)
                    Text("Dice game")
                }
                Spacer()
                NavigationLink(destination: GameScreenView()) {
                    ZStack {
                        RoundedRectangle(cornerRadius: 20)
                            .foregroundColor(Color.primary)
                            .frame(width: 240.0, height: 68.0)
                        
                        Text("Start game")
                            .font(.title)
                            .fontWeight(.medium)
                            .foregroundColor(Color("AdaptiveColor"))
                    }
                }
                NavigationLink(destination: ModalRulesView()) {
                    ZStack {
                        RoundedRectangle(cornerRadius: 20)
                            .foregroundColor(Color.primary)
                            .frame(width: 240.0, height: 68.0)
                        
                        Text("Rules")
                            .font(.title)
                            .fontWeight(.medium)
                            .foregroundColor(Color("AdaptiveColor"))
                    }
                }
                Spacer()
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
