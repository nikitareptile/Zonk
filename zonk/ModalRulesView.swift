//
//  ModalRulesView.swift
//  ZonkGame
//
//  Created by Никита Тихонюк on 26.01.2023.
//

import SwiftUI

struct ModalRulesView: View {
    var body: some View {
        VStack {
            Text("Game rules")
                .font(.largeTitle)
            .fontWeight(.black)
            Spacer()
            List {
                Text("Shake the cup")
                Text("Watch for combinations")
                Text("Save your dices or reshake the cup")
            }
        }
        
    }
}

struct ModalRulesView_Previews: PreviewProvider {
    static var previews: some View {
        ModalRulesView()
    }
}
