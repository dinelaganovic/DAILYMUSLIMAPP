//
//  BlagdaniView.swift
//  frontend
//
//  Created by Muhedin Alic on 15.12.23.
//

import SwiftUI

struct BlagdaniView: View {
    let blagdani: [TCalendar] = [
    TCalendar(month: "JAN", day:18 , year:"2024" , title: "Lejletul Regaib", subtitle: "6. Redžeb 1445.", detail: ""),
    TCalendar(month: "FEB", day:7 , year: "2024", title: "Lejletul Miradž", subtitle: "26. Redžep 1445.", detail: "Israi-Mi'radž je noćno putovanje Poslanika Muhammeda s.a.v.s iy Mekke(Mesdžidul-Harama) do Jerusalima(Mesdžidul-Aksaa) a nakon toga ka nebeskim sferama na Buraku."),
    TCalendar(month: "FEB", day:24 , year: "2024", title: "Lejletul Berat", subtitle: "14. Šaban 1445.", detail: ""),
    TCalendar(month: "MAR", day:11 , year: "2024", title: "Početak posta", subtitle: "1. Ramazan 1445.", detail: "Mjesec ramazan u kojem se muslimani sustežu od jela, pića i svih drugih užitaka od zore, pa do zalaska sunca. Mjesec Ramazan je mjesec blagodati. Svako dobro djelo se mngostruko nagrađuje."),
    TCalendar(month: "MAR", day:27 , year: "2024", title: "Dan pobjede na Bedru", subtitle: "17. Ramazan 1445.", detail: "Tog dana 17. ramazana, muslimanski neprijatelji su imali oko 9000 boraca, a muslimana je bilo oko 300, što znači da je jedan musliman bio protiv trojice protivnika."),
    TCalendar(month: "APR", day:5 , year: "2024", title: "Lejletul Kadr", subtitle: "26. Ramazan 1445.", detail: "Lejletul Kadr je noć početka objave Kur'ana. Ne zna se tačno kad je ova noć, ali je Poslanik a.s. ostavio upute da se ona traži u mjesecu Ramazanu, njegovoj posljednjoj trećini u neparnim noćima."),
    TCalendar(month: "APR", day: 10, year: "2024", title: "Ramazanski bajram", subtitle: "1. Ševal 1445.", detail: "Mubarek Ramazanski bajram dolazi nakon upotpunjenja posta mjeseca ramazana, kao četvrtog temelja islama, nakon što su muslimani upotpunili post u ramazanu.Ovaj praznik traje 3 dana."),
    TCalendar(month: "JUN", day: 15, year: "2024", title: "Dan Arefata ", subtitle: "9. Zul-hidždže 1445.", detail: "Dan Arefata je najbolji dan u godini.Allahov Poslanik, s.a.v.s., je, upitan o postu na dan 'Arefata, odgovorio: 'On iskupljuje grijehe prošle godine, te ostatak dotične godine.(Muslim)"),
    TCalendar(month: "JUN", day: 16, year: "2024", title: "Kurban-bajram ", subtitle: "10. Zul-hidždže 1445.", detail: "Dva meseca i 10 dana nakon Ramazana, sa izlaskom sunca, islamski vernici započinju četvorodnevnu proslavu Kurban-bajrama, odnosno Dana žrtve.Traje 4 dana."),
    TCalendar(month: "JUL", day:7 , year: "2024", title: "Hidžretska nova godina", subtitle: "1. Muharem 1446.", detail: "Hidžra - preseljenje Muhammeda a.s., iz Mekke u Medinu. Hidžra se dogodila 622. godine po Isau, a.s. Ovakav način računanja vremena usvojen je za vrijeme halife Omera, r.a."),
    TCalendar(month: "JUL", day:16 , year: "2024", title: "Dan Ašure", subtitle: "10. Muharem 1446.", detail: "Deseti dan mjeseca muharrema je Dan ašure. U njemu je Uzvišeni Allah svojim poslanicima dao razne počasti i uzdigao njihove stepene. Post u ovom danu ima veliku vrijednost. "),
    TCalendar(month: "SEP", day:15 , year: "2024", title: "Dan rođenja Poslanika a.s.", subtitle: "12. Rebiul-evel 1446.", detail: "Muhammed, a.s., je rođen u Mekki, u zoru, u ponedjeljak, 12. rebiu-l-evvela ili 20.aprila 571. god. Prilikom rođenja desili su se neki čudni događaji u svijetu koji su bili predznaci njegovom poslanstvu."),
    ]
    var body: some View {
        ZStack{
            Color(red: 0, green: 0.4, blue: 0)
                .navigationTitle("Značajni datumi")
                .ignoresSafeArea()
            Circle()
                .scale(1.8)
            .foregroundColor(.white)
            Rectangle()
                       .fill(Color.white) // Boja pozadine
                       .frame(width: 400, height: 200)
                       .offset(x: 0, y: 350)
            VStack{
                VStack {Spacer().frame(height: 30)                        }
                        .padding()
                ScrollView(showsIndicators: false) {
                    Spacer()
                    VStack {
                        ForEach(blagdani, id: \.title) { blagdan in
                            BCard(translation: blagdan)
                                .padding(.bottom, 5)
                                .fixedSize(horizontal: false, vertical: true)
                                
                       }

                    }
                    .padding()                }
            }
        }
    }
}

struct BlagdaniView_Previews: PreviewProvider {
    static var previews: some View {
        BlagdaniView()
    }
}
