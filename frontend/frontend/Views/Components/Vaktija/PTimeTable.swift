//
//  PTimeTable.swift
//  frontend
//
//  Created by Muhedin Alic on 16.12.23.
//

import SwiftUI

struct PTimeTable: View {
    
    let gridItems = Array(repeating: GridItem(.flexible()), count: 3)
    let prayerClass: PrayerTimesClass
    
    var body: some View {
        VStack(alignment: .leading){
            LazyVGrid(columns: gridItems, spacing: 6) {
                ForEach(0..<1) { _ in
                    PrayerTimeTableItem(prayerName: "Zora", prayerTime: "\(prayerClass.formattedPrayerTime(prayerClass.prayers?.fajr))")
                        .frame(maxWidth: .infinity, maxHeight: .infinity)
                        .aspectRatio(1.0, contentMode: .fill)
                        .background(Color(red: 0, green: 0.4, blue: 0))
                        .cornerRadius(22)
                    PrayerTimeTableItem(prayerName: "I. Sunca", prayerTime: "\(prayerClass.formattedPrayerTime(prayerClass.prayers?.sunrise))")
                        .frame(maxWidth: .infinity, maxHeight: .infinity)
                        .aspectRatio(1.0, contentMode: .fill)
                        .background(Color(red: 0, green: 0.4, blue: 0))
                        .cornerRadius(22)
                    PrayerTimeTableItem(prayerName: "Podne", prayerTime: "\(prayerClass.formattedPrayerTime(prayerClass.prayers?.dhuhr))")
                        .frame(maxWidth: .infinity, maxHeight: .infinity)
                        .aspectRatio(1.0, contentMode: .fill)
                        .background(Color(red: 0, green: 0.4, blue: 0))
                        .cornerRadius(22)
                    PrayerTimeTableItem(prayerName: "Ikindija", prayerTime: "\(prayerClass.formattedPrayerTime(prayerClass.prayers?.asr))")
                        .frame(maxWidth: .infinity, maxHeight: .infinity)
                        .aspectRatio(1.0, contentMode: .fill)
                        .background(Color(red: 0, green: 0.4, blue: 0))
                        .cornerRadius(22)
                    PrayerTimeTableItem(prayerName: "Akšam", prayerTime: "\(prayerClass.formattedPrayerTime(prayerClass.prayers?.maghrib))")
                        .frame(maxWidth: .infinity, maxHeight: .infinity)
                        .aspectRatio(1.0, contentMode: .fill)
                        .background(Color(red: 0, green: 0.4, blue: 0))
                        .cornerRadius(22)
                    PrayerTimeTableItem(prayerName: "Jacija", prayerTime: "\(prayerClass.formattedPrayerTime(prayerClass.prayers?.isha))")
                        .frame(maxWidth: .infinity, maxHeight: .infinity)
                        .aspectRatio(1.0, contentMode: .fill)
                        .background(Color(red: 0, green: 0.4, blue: 0))
                        .cornerRadius(22)
                    
                }
            }
        }
    }
}

struct PTimeTable_Previews: PreviewProvider {
    static var previews: some View {
        PTimeTable(prayerClass: PrayerTimesClass())
            .preferredColorScheme(.light)
            }
    }
