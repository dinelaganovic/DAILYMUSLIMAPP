//
//  ZikrCard.swift
//  frontend
//
//  Created by Muhedin Alic on 16.12.23.
//

import SwiftUI

struct ZikrCard: View {
    var title: String
    var subtitle: String
    @Binding var counter: Int
    var body: some View {
        ZStack {
            VStack {
                Spacer()

                Text(title)
                    .font(Font.custom("Simplified Arabic", size: 18))
                    .foregroundColor(.black)
                    .multilineTextAlignment(.trailing)
                    .padding()
                Spacer()

                Text(subtitle)
                    .font(.subheadline)
                    .foregroundColor(.black)
                    .padding()

                Spacer()

                HStack {
                    Spacer()
                    Text("\(counter)")
                        .font(.caption)
                        .foregroundColor(.white)
                        .padding(8)
                        .background(counter == 0 ? Color.black : Color.black)
                        .clipShape(Circle())
                        .offset(x: -8, y: -8)
                }
            }
            .frame(width: 350, height: 420)
            .background(counter == 0 ? Color(red: 0, green: 0.4, blue: 0) : Color.white)
            .cornerRadius(10)
            .padding()
            .overlay(
                RoundedRectangle(cornerRadius: 10)
                    .stroke(Color.black, lineWidth: 2)
            )
        }
        .onTapGesture {
            if counter > 0 {
                counter -= 1
            }
        }
    }
}


