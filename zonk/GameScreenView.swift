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
            HStack {
                Button(action: {
                    showModalRules.toggle()
                }, label: {
                    ZStack {
                        RoundedRectangle(cornerRadius: 20)
                            .foregroundColor(.gray)
                            .frame(width: 88.0, height: 42.0)
                        Text("Rules")
                            .foregroundColor(.white)
                    }
                })
                .sheet(isPresented: $showModalRules) {
                    ModalRulesView()
                }
            }
            Spacer()
        }
    }
}

struct GameScreenView_Previews: PreviewProvider {
    static var previews: some View {
        GameScreenView()
    }
}
