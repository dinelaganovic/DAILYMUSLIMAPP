//
//  HadisCard.swift
//  frontend
//
//  Created by Muhedin Alic on 18.12.23.
//

import SwiftUI

struct Hadis {
    var title: String
    var subtitle: String
}
struct HadisCard: View {
    var translation: Hadis
    var body: some View {
        ZStack {
            VStack {
                Spacer()

                Text(translation.title)
                    .bold()
                    .foregroundColor(.black)
                    .multilineTextAlignment(.center)
                    .padding()
                Spacer()

                HStack {
                    Spacer()
                    Text(translation.subtitle)
                        .font(.subheadline)
                        .foregroundColor(.black)
                        .padding()

                    Spacer()

                    Button(action: {
                        UIPasteboard.general.string = translation.title+translation.subtitle
                    }) {
                        Image(systemName: "doc.on.doc")
                            .foregroundColor(.black)
                            .font(.system(size: 20))
                            .padding()
                            .background(Color(red: 0.95, green: 0.95, blue: 0.95)) // Bledo siva boja
                            .clipShape(Circle())
                    }
                    .padding()
                }
            }
            .frame(width: 350, height: 350)
            .background(
                RoundedRectangle(cornerRadius: 10)
                    .stroke(Color.black, lineWidth: 2)
                    .background(Color(red: 0.95, green: 0.95, blue: 0.95)) // Bledo siva boja

            )
            .overlay(
                RoundedRectangle(cornerRadius: 10)
                    .stroke(Color.black, lineWidth: 2)
                
            )
        }
    }

}

