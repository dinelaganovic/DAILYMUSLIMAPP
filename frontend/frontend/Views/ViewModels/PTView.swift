//
//  PTView.swift
//  frontend
//
//  Created by Muhedin Alic on 17.12.23.
//

import SwiftUI

struct PTView: View {
    @ObservedObject var prayerClass: PrayerTimesClass
        @State private var isPresented = false
        @State private var isShowSettings = false
        
        var body: some View {
            NavigationView{
                ZStack{
                    Color("bg")
                        .ignoresSafeArea()
                    ScrollView{
                        if let error = prayerClass.error {
                            VStack{}
                            .onAppear{
                                isPresented = true
                            }
                        } else {
                            if let prayers = prayerClass.prayers {
                                if let nextPrayer = prayers.nextPrayer(){
                                    PrayerTimeHeader(prayerName: "\(nextPrayer)", prayerTime: prayers.time(for: nextPrayer), location: prayerClass.city ?? "__")
                                        .frame(maxWidth: .infinity, alignment: .center)
                                } else {
                                            PrayerTimeHeader(prayerName: "Imsak", prayerTime: Date(), location: prayerClass.city ?? "__")
                                                .frame(maxWidth: .infinity, alignment: .center)
                                        }
                                        PTimeTable(prayerClass: prayerClass)
                                            .listRowSeparator(.hidden)
                                            .onAppear {
                                                isPresented = false
                                            }
                                    }
                                }
                            }
                    .navigationBarBackButtonHidden(true)
                    .navigationBarHidden(true)
                    .fullScreenCover(isPresented: $isPresented, content: { LocationNotFoundView() })
                    
                    .onAppear{
                        prayerClass.startUpdatingLocation()
                    }
                    .onDisappear{
                        prayerClass.stopUpdatingLocation()
                          }
                       }
            
                   }
          
                }
}

struct PTView_Previews: PreviewProvider {
    static var previews: some View {
        PTView(prayerClass: PrayerTimesClass())
            .preferredColorScheme(.light)
                        
    }
}
