//
//  QurabCard.swift
//  frontend
//
//  Created by Muhedin Alic on 23.12.23.
//

import SwiftUI


struct QuranCard: View {
    var translation: Surah;
    var body: some View {
        NavigationLink(destination: SurahCard(number: translation.number)) {
        ZStack {
            RoundedRectangle(cornerRadius: 15)
                .fill(Color.white) // Boja pozadine
                .overlay(
                    RoundedRectangle(cornerRadius: 15)
                        .stroke(Color(red: 0, green: 0.4, blue: 0), lineWidth: 2)
                        .frame(height: 1) // Debljina donjeg bordera
                        .offset(y: 40) // Pomeraj bordera na donju ivicu
                )
            HStack {
                Text("\(translation.number)")
                    .font(.title)
                    .foregroundColor(.black)
                    .padding()
                
                VStack(alignment: .leading, spacing: 8) {
                    Text("\(translation.name)")
                        .font(.headline)
                        .foregroundColor(Color(red: 0, green: 0.4, blue: 0))
                    
                    Text("   \(translation.translatedName)")
                        .font(.subheadline)
                        .foregroundColor(.black)
                }
                
                Spacer()
            }
        }
        .frame(height: 80)
        .padding()
        
    }
       }
}
