//
//  ContentView.swift
//  EmojiLover_App
//
//  Created by Rudra on 14/07/23.
//

import SwiftUI

enum Emoji: String, CaseIterable {
    case 😍, 🥳, 😎, 🤡
}

struct ContentView: View {
    
    @State var selection: Emoji = .😍
    
    
    var body: some View {
        
        VStack {
            
            VStack{
                
                Text("Emoji Lovers")
                    .font(.system(size: 45))
                    .fontWeight(.bold)
            }.padding(.bottom, 120)
            
            VStack (){
                
                Text(selection.rawValue)
                    .font(.system(size: 150))
                Picker("Select Emoji", selection: $selection){
                    ForEach(Emoji.allCases, id: \.self) {
                        emoji in Text(emoji.rawValue)
                    }
                }
                .pickerStyle(.segmented)
                
            }
            .padding()
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
