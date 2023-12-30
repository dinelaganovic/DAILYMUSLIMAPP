//
//  PTHome.swift
//  frontend
//
//  Created by Muhedin Alic on 17.12.23.
//

import SwiftUI

struct PTHome: View {
    var body: some View {
        PTView(prayerClass: PrayerTimesClass())
    }
}

struct PTHome_Previews: PreviewProvider {
    static var previews: some View {
        PTHome()
    }
}
