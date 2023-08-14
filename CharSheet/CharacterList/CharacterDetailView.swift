//
//  CharacterDetailView.swift
//  CharSheet
//
//  Created by Lexi McQueen on 7/24/23.
//

import SwiftUI

struct CharacterDetailView: View {
    var character : Character
    
    var body: some View {
        VStack(spacing: 15) {
            Spacer()
            
            Text(character.characterName)
                .font(.title2)
                .fontWeight(.semibold)
                .lineLimit(2)
                .multilineTextAlignment(.center)
                .padding(.horizontal)
            HStack(spacing: 50) {
                Text("Level \(character.level)")
                    .font(.subheadline)
                    .foregroundColor(.secondary)
                Text(character.CharacterClass.rawValue)
                    .font(.subheadline)
                    .foregroundColor(.secondary)
            }
            //            Spacer(minLength: 50)
            HStack(spacing: 10) {
                VStack(alignment: .center) {
                    Text("HP")
                        .font(.largeTitle)
                    Text("\(character.hitPoints)")
                        .font(.subheadline)
                        .foregroundColor(.secondary)
                }
            }
            
            Spacer()
            
//            Link(destination: character.URL, label: {
//                StandardButton(title: "Link To Sheet")
//            })
            
        }
    }
}

struct CharacterDetailView_Previews: PreviewProvider {
    
    static var character1 = Character(gameType: .FantasyStandard, characterName: "Character Not Supplied", level: 0, hitPoints: 0, CharacterClass: .None, URL: "google.com")
    
    static var previews: some View {
        CharacterDetailView(character: character1)
    }
}

struct StandardButton: View {
    var title : String
    
    var body: some View {
        Text(title)
            .bold()
            .font(.title2)
            .frame(width: 160, height: 50)
            .background(Color(.systemRed))
            .foregroundColor(.white)
            .cornerRadius(10.0)
    }
}