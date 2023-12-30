//
//  VaktijaView.swift
//  frontend
//
//  Created by Muhedin Alic on 15.12.23.
//

import SwiftUI

struct VaktijaView: View {
    var body: some View {
        ZStack{
            Color(red: 0, green: 0.4, blue: 0)
                .navigationTitle("Vaktija")
                .ignoresSafeArea()
            VStack{
                VStack {  }
                        .padding()
                VStack {
                    PTHome()
                }
            }
        }
    }
}

struct VaktijaView_Previews: PreviewProvider {
    static var previews: some View {
        VaktijaView()
    }
}
