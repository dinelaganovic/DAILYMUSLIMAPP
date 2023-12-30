//
//  EUCard.swift
//  frontend
//
//  Created by Muhedin Alic on 17.12.23.
//

import SwiftUI
typealias TranslationTuple = (Int, String, String)
struct EUCard: View {
        var translation: TranslationTuple
    var body: some View {
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
                   Text("\(translation.0)")
                       .font(.title)
                       .foregroundColor(.black)
                       .padding()

                   VStack(alignment: .leading, spacing: 8) {
                       Text("\(translation.1)")
                           .font(.headline)
                           .foregroundColor(Color(red: 0, green: 0.4, blue: 0))

                       Text("   \(translation.2)")
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
