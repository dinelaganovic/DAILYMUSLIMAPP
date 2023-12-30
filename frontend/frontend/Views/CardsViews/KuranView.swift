//
//  KuranView.swift
//  frontend
//
//  Created by Muhedin Alic on 23.12.23.
//

import SwiftUI

struct KuranView: View {
    var body: some View {
        ZStack{
            Color(red: 0, green: 0.4, blue: 0)
                .navigationTitle("Kur'anske sure")
                .ignoresSafeArea()
            VStack{
                VStack {  }
                        .padding()
                VStack {
                        QuranView()
                }
            }
        }
    }
}

struct KuranView_Previews: PreviewProvider {
    static var previews: some View {
        KuranView()
    }
}
