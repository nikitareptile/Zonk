//
//  GameScreenView.swift
//  ZonkGame
//
//  Created by Никита Тихонюк on 26.01.2023.
//

import SwiftUI

struct GameScreenView: View {
    @State var showModalRules = false
    
    var body: some View {
        VStack {
            Text("This is game screen")
            
            Button(action: {
                showModalRules.toggle()
            }, label: {
                Text("Rules")
            })
            .sheet(isPresented: $showModalRules) {
                ModalRulesView()
            }
        }
    }
}

struct GameScreenView_Previews: PreviewProvider {
    static var previews: some View {
        GameScreenView()
    }
}
