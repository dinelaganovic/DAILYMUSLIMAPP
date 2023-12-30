//
//  HomeView.swift
//  frontend
//
//  Created by Muhedin Alic on 15.12.23.
//

import SwiftUI
import Adhan
struct HomeView: View {
    @Environment(\.presentationMode) var presentationMode
           var body: some View {
               ZStack {
                 Color.white.edgesIgnoringSafeArea(.all)
                 .navigationTitle("Početna")
                 .navigationBarTitleDisplayMode(.inline)
                 .navigationBarBackButtonHidden(true)
                 .navigationBarItems(
                                     trailing: Button(action: {
                                         // Implementirajte akciju resetovanja ovde
                                         // ...
                                         // Nakon resetovanja, vratite se na MainView
                                         presentationMode.wrappedValue.dismiss()
                                     }) {
                                         Image(systemName: "arrow.right.square.fill")
                                     }
                                 )
                   Color(red: 0, green: 0.4, blue: 0)
                       .ignoresSafeArea()
                   Circle()
                       .scale(1.8)
                       .foregroundColor(.white)
                   ZStack {
                       VStack(spacing: 30){
                                   // Prva vrsta kartica
                                   HStack {
                                       NavigationLink(destination: KuranView()) {
                                                                  CardView(title: "Kur'an", image: "quran")
                                                              }
                                                              
                                       NavigationLink(destination: ZikrView()) {
                                                                  CardView(title: "Zikr", image: "zikr")
                                                              }
                                                              
                                       NavigationLink(destination: HadisView()) {
                                                                  CardView(title: "Hadis", image: "hadis")
                                                              }
                                   }
                                   
                                   // Druga vrsta kartica
                                   HStack {
                                       NavigationLink(destination: VaktijaView()) {
                                           CardView(title: "Vaktija", image: "pt")
                                           
                                       }
                                       NavigationLink(destination: QiblaView()) {
                                           CardView(title: "Kibla", image: "qibla")
                                           
                                       }
                                    

                                   }
                                   
                                   // Treća vrsta kartica, i tako dalje...
                                  HStack {
                                      NavigationLink(destination: BlagdaniView()) {
                                          CardView(title: "Blagdani", image: "calendar")
                                          
                                      }
                                      NavigationLink(destination: EsmaulHusnaView()) {
                                          CardView(title: "EsmaulHusna", image: "names")
                                          
                                      }
                                      NavigationLink(destination: DuaView()) {
                                          CardView(title: "Dove", image: "dua")
                                          
                                      }
                           }
                               }
                               .padding()
                           }
                       
                              }
                          }
}


struct HomeView_Previews: PreviewProvider {
    static var previews: some View {
        HomeView()
    }
}
