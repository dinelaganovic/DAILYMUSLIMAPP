//
//  CardView.swift
//  frontend
//
//  Created by Muhedin Alic on 15.12.23.
//

import SwiftUI

struct CardView: View {
    var title: String
    var image: String

    var body: some View {
           VStack {
               Image(image)
                   .resizable()
                   .aspectRatio(contentMode: .fit)
                   .frame(width: 80, height: 80)
                   .cornerRadius(15)

               Text(title)
                   .font(.caption)
                   .foregroundColor(.black)
                   .padding(.top, 5)
           }
           .padding(15)
           .background(
               RoundedRectangle(cornerRadius: 15)
                   .fill(Color(UIColor.systemBackground)) // Bledo plava boja pozadine
                   .overlay(
                       RoundedRectangle(cornerRadius: 15)
                           .stroke(Color.black, lineWidth: 1)
                   )
           )
           .cornerRadius(15)
           .shadow(radius: 5)
       }
}



