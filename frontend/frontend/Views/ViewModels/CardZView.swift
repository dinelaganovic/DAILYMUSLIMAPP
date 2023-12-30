//
//  CardZView.swift
//  frontend
//
//  Created by Muhedin Alic on 15.12.23.
//

import SwiftUI

struct CardZView: View {
    var title: String
    var body: some View {
            ZStack {
                RoundedRectangle(cornerRadius: 15)
                    .fill(Color(red: 0, green: 0.4, blue: 0)) // Postavite boju pozadine na zelenu
                    .overlay(
                        RoundedRectangle(cornerRadius: 15)
                            .stroke(Color.black, lineWidth: 2) // Postavite crni okvir
                    )
                    .shadow(radius: 5)

                Text(title)
                    .font(.headline)
                    .foregroundColor(.white) // Postavite belu boju teksta
            }
            .frame(height: 80)
            .padding() // Dodajte malo odstojanja oko kartice
        }
    }
