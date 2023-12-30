//
//  BCard.swift
//  frontend
//
//  Created by Muhedin Alic on 18.12.23.
//

import SwiftUI
struct TCalendar {
    var month:String
    var day: Int
    var year: String
    var title: String
    var subtitle: String
    var detail: String
}
struct BCard: View {
    var translation: TCalendar
    
    var body: some View {
        ZStack {
            RoundedRectangle(cornerRadius: 2)
                .fill(Color.white)
                .padding(.top, 100)
                .padding(.bottom, 130)
                .padding(.leading, 10)
                .padding(.trailing, 10)
                .border(Color(red: 0, green: 0.4, blue: 0), width: 1) // Dodajte border direktno na karticu
            
            HStack(alignment: .center, spacing: 10) {
                VStack(alignment: .center, spacing: 40) {
                    Text(translation.month)
                        .foregroundColor(Color.black)
                        .padding(.top, 20)
                    
                    Text("\(translation.day)")
                        .foregroundColor(Color(red: 0, green: 0.4, blue: 0))
                    Text(translation.year)
                        .foregroundColor(Color.black)
                        .padding(.bottom, 30)
                        
                }
                .frame(height: 238)
                .foregroundColor(.white)
                .padding(.horizontal, 12)
                .background(Color(red: 0.8, green: 0.8, blue: 0.8))
                .padding(.leading, 1)

                HStack(alignment: .top, spacing: 1) {
                    VStack(alignment: .leading, spacing: 1) {
                        Text(translation.title)
                            .font(.headline)
                            .foregroundColor(Color(red: 0, green: 0.4, blue: 0))
                            .padding(.bottom, 10)

                        Text(translation.subtitle)
                            .font(.subheadline)
                            .foregroundColor(Color.gray)
                            .padding(.leading, 10)

                        
                        Text(translation.detail)
                            .font(.subheadline)
                            .foregroundColor(Color.black)
                            .lineLimit(nil) // Prikaži ceo tekst, bez ograničenja
                            .multilineTextAlignment(.leading)

                    }

                    Spacer()
                }
            }
            .frame(height: 150)
        }
    }
}
