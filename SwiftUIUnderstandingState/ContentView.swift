//
//  ContentView.swift
//  SwiftUIUnderstandingState
//
//  Created by ramil on 06/10/2019.
//  Copyright © 2019 com.ri. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    
    @State var pokemon = "Charmander"
    
    var body: some View {
        VStack {
            Text(pokemon)
                .frame(width: UIScreen.main.bounds.width, height: 50 )
                .background(Color.blue)
                .foregroundColor(Color.white)
                .padding(10)
            
            Button(action: switchPokemon,
                   label: {Text("Switch")
            })
        }
    }
    
    func switchPokemon() {
        let list = [
            "Charmander",
            "Squirtle",
            "Bulbasauer",
            "Pikachu"
        ]
        
        pokemon = list.randomElement() ?? ""
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
