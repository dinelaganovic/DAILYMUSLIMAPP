//
//  ZikrView.swift
//  frontend
//
//  Created by Muhedin Alic on 15.12.23.
//

import SwiftUI

struct ZikrView: View {
    var body: some View {
        ZStack{
            Color(red: 0, green: 0.4, blue: 0)
                .ignoresSafeArea()
            Circle()
                .scale(1.8)
                .foregroundColor(.white)
            ZStack{
                            VStack(spacing: 40) {
                                NavigationLink(destination: JutarnjiView()) {
                                    CardZView(title: "JUTARNJI ZIKR")
                                    
                                }
                                NavigationLink(destination: VecernjiView()) {
                                    CardZView(title: "VEČERNJI ZIKR")
                                    
                                }
                                }
                            }
                            .padding()
            }
        }
    }

struct ZikrView_Previews: PreviewProvider {
    static var previews: some View {
        ZikrView()
    }
}
