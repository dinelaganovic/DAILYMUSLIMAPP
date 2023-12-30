//
//  DuaCard.swift
//  frontend
//
//  Created by Muhedin Alic on 19.12.23.
//

import SwiftUI
struct Dua {
    var title: String
    var longText: String
}
struct DuaCard: View {
    var translation: Dua
        var body: some View {
            VStack {
                Text(translation.title)
                    .font(.system(size: 16))
                    .padding()
                    .foregroundColor(Color(red: 0, green: 0.4, blue: 0))
                    .background(
                        RoundedRectangle(cornerRadius: 15)
                            .fill(Color.white) // Boja pozadine
                            .overlay(
                                RoundedRectangle(cornerRadius: 15)
                                    .stroke(Color(red: 0, green: 0.4, blue: 0), lineWidth: 2)
                                    .frame(height: 1) // Debljina donjeg bordera
                                    .offset(y: 20) // Pomeraj bordera na donju ivicu
                            ))
                
                ScrollView {
                    Text(translation.longText)
                        .padding()
                        .foregroundColor(.black)
                        .frame(maxWidth: .infinity, alignment: .center)
                }
            }
            .frame(maxHeight: .infinity)
            .background(Color.white)
            .border(Color(red: 0, green: 0.4, blue: 0), width: 2)
        }
}
