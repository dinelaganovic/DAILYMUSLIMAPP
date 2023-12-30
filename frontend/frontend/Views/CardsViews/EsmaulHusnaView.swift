//
//  EsmaulHusnaView.swift
//  frontend
//
//  Created by Muhedin Alic on 15.12.23.
//

import SwiftUI

struct EsmaulHusnaView: View {
    let translations: [TranslationTuple] = [
            (1, "Allah الله", "Jedan Jedini Bog"),
            (2, "Er-Rahman الرّحمان", "Blagi, Premilosrdni"),
            (3, "Er-Rahim الرّحيم", "Svemilostivi"),
            (4, "El-Melik المَلِك ", "Vladar, Suvereni"),
            (5, "El-Kuddus القُدّوس", "Sveti, Najčistiji"),
            (6, "Es-Selam السّلام", "Onaj koji je bez mane"),
            (7,"El-Mu'min المُؤمن", "Pouzdani, Onaj koji daje mir"),
            (8,"El-Muhejmin المُهَيْمِن", "Zaštitnik, Onaj koji daje sigurnost"),
            (9,"El-Aziz العزيز "," Onaj koji sve pazi i prati"),
            (10, "El-Džebbar الجبّار ", "Silni"),
            (11, "El-Mutekebbir المُتَكَبِّر"," Gordi"),
            (12,"El-Halik الخالق ","Stvoritelj, Odlučujući, Onaj koji daje mjeru svakoj stvari"),
            (13, "El-Bari' البارئ", "Onaj koji divno stvara"),
            (14,"El-Musavvir المُصَوِّر", "Oblikovatelj"),
            (15,"El-Gaffar الغفّار ","Svepraštajući"),
            (16,"El-Kahhar القهّار","Onaj koji sve nadvladava"),
            (17,"El-Vehhab الوهّاب ","Milostivi darivatelj, Onaj koji obilno dariva"),
            (18,"Er-Rezzak الرزّاق ","Onaj koji obilnu opskrbu daje"),
            (19,"El-Fettah الفتّاح"," Onaj koji sve rješava i otklanja prepreke"),
            (20,"El-Alim العليم","Sveznajući"),
            (21,"El-Kabid القابض", "Onaj koji steže i stišće"),
            (22,"El-Basit الباسط ","Onaj koji pruža i otpušta"),
            (23,"El-Hafid الخافض ","Onaj koji spušta"),
            (24, "Er-Rafi' الرّافع ","Onaj koji uzdiže"),
            (25,"El-Mu'izz المُعِزّ"," Onaj koji uzvisuje, daje čast i slavu"),
            (26,"El-Muzill المُذِلّ"," Onaj koji ponižava, daje poniženje"),
            (27,"Es-Semi' السّميع"," Svečujni"),
            (28,"El-Besir البصير ","Svevideći"),
            (29,"El-Hakem الحكم", "Sudac, Onaj koji postavlja svoja pravila, donosi svoj sud i izriče presudu"),
            (30, "El-'Adl العدل"," Pravedni"),
            (31, "El-Latif اللطيف", "Dobrostivi, Dobri"),
            (32,"El-Habir الخبير"," O svemu obaviješteni"),
            (33, "El-Halim الحلي"," Blagi, Srdačni"),
            (34,"El-Azim العظيم "," Veliki, Neizmjerljivi"),
            (35, "El-Gafur الغفور"," Svepraštajući"),
            (36, "Eš-Šekur الشّكور"," Zahvalni, Onaj koji uzvraća nagradom za vjernost"),
            (37,"El-'Alijj العليّ","Uzvišeni"),
            (38,"El-Kebir الكبير"," Beskrajno veliki, Najizdignutiji"),
            (39,"El-Hafiz الحفيظ"," Onaj koji čuva"),
            (40,"El-Mukit المُقيت","Onaj koji pazi i uzdržava"),
            (41,"El-Hasib الحسيب","Onaj koji obračun svodi"),
            (42,"El-Dželil الجليل"," Veličanstveni"),
            (43,"El-Kerim الكريم"," Plemeniti"),
            (44,"El-Rekib الرقيب"," Budni, Onaj koji na sve motri"),
            (45,"El-Mudžib المجيب","Onaj koji uslišava molbe"),
            (46,"El-Vasi’ الواسع","Onaj koji milošću i znanjem sve obuhvata"),
            (47,"El-Hakim الحكيم"," Mudri"),
            (48,"El-Vedud الودود"," Onaj koji voli"),
            (49,"El-Medžid المجيد","Slavljeni, Najslavniji"),
            (50,"El-Ba'is الباعث","Uskrsavatelj, Onaj koji podiže iz mrtvih"),
            (51,"Eš-Šahid الشّهيد","Svjedok svemu"),
            (52,"El-Hakk الحقّ","Istiniti"),
            (53,"El-Vekil الوكيل"," Sveopći Skrbnik, Staratelj, Povjerenik"),
            (54,"El-Kavijj القوي"," Moćni"),
            (55,"El-Metin المتين"," Čvrsti, Postojani"),
            (56,"El-Velijj الوليّ","Zaštitnik"),
            (57,"El-Hamid الحميد","Hvaljeni"),
            (58,"El-Muhsi المُحصي","Onaj koji sve obuhvata i svemu broj zna"),
            (59,"El-Mubdi المُبدئ","Početni Stvaralac, Izumitelj"),
            (60,"El-Mu'id المُعيد"," Onaj koji nakon smrti daje novo postojanje"),
            (61,"El-Muhijj المُحيي"," Onaj koji život daje"),
            (62,"El-Mumit المُميت","Onaj koji usmrćuje"),
            (63,"El-Hajj الحيّ"," Živi"),
            (64,"El-Kajjum القيّوم","Onaj koji sve održava i čuva"),
            (65,"El-Vadžid الواجد"," Bogati, Onaj koji sve posjeuje"),
            (66,"El-Madžid الماجد"," Slavni"),
            (67,"El-Vahid الواحد","Jedini, Onaj kome sličnog nema"),
            (68,"Es-Samed الصّمد"," Onaj kome se svatko obraća, u koga se svatko pouzda"),
            (69,"El-Kadir القادر ","Svemoćni"),
            (70,"El-Muktedir المُقتدر","Onaj kome apsolutna moć pripada"),
            (71,"El-Mukaddim المُقدِّم","Onaj koji unapređuje"),
            (72,"El-Mu'ehhir المُؤخّر","Onaj koji unazađuje"),
            (73,"El-Evvel الأوّل","Prvi, Onaj čije postojanje nema početka"),
            (74,"El-Ahir الآخر","Posljednji, Onaj čije postojanje nema svršetka"),
            (75,"El-Zahir الظّاهر","Vidljivi, Očiti, Vanjski"),
            (76,"El-Batin الباطن","Skriveni, Unutarnji"),
            (77,"El-Vali الوالي","Upravitelj, Čuvar, Bliski"),
            (78,"El-Mute'ali المُتعالي"," Najuzvišeniji, Najpočašćeniji"),
            (79,"El-Berr البرّ","Dobročinitelj, Dobrohotni"),
            (80,"Et-Tevvab التّوّاب","Onaj koji prima pokajanje"),
            (81,"El-Muntekim المُنْتَقِم","Osvetnik, Onaj koji ne ostaje dužan"),
            (82,"El-Afuvv ّالعفُو","Onaj čiji je oprost neizmjerljiv"),
            (83,"Er-Re'uf الرّؤف","Samilosni, Sažaljivi"),
            (84,"Malik-ul-Mulk مالك المُلك","Posjednik sve Vlasti"),
            (85,"Zul-Dželali vel-Ikram ذو الجلال والإكرام","Posjednik svakog Visočanstva i Darežljivosti"),
            (86,"El-Muksit المُقسط"," Pravedni, Sveopći djelitelj pravde"),
            (87,"El-Džami' الجامع ","Ujedinitelj"),
            (88,"El-Ganijj الغنيّ"," Bogati, Onaj koji je sam sebi dostatan"),
            (89,"El-Mugni المُغْني","Onaj koji bogatstvo dodjeljuje, Onaj koji osamostaljuje"),
            (90,"El-Mani' المانع","Onaj koji bogatstvo oduzima, Onaj koji štiti"),
            (91,"Ed-Darr الضّار"," Onaj daje štetu i nevolju"),
            (92,"En-Nafi' النّافع"," Onaj daje korist i dobro"),
            (93,"En-Nur النّور "," Svjetlost"),
            (94,"El-Hadi الهادي"," Onaj koji vodi i upućuje"),
            (95,"El-Bedi' البديع","Prapočetni, Nedostižni, Neusporedivi"),
            (96,"El-Baki الباقي","Vječni, Stalni, Onaj čije je nepostojanje nemoguće"),
            (97,"El-Varis الوارث","Nasljednik svega"),
            (98,"Er-Rešid الرّشيد","Upućivatelj na dobro, na pravi put"),
            (99,"Es-Sabur الصّبور"," Strpljivi, Bezvremenski, Onaj koji grješnicima odlaže kaznu"),
        ]
    var body: some View {
        ZStack{
            Color(red: 0, green: 0.4, blue: 0)
                .navigationTitle("99 Allahovih imena")
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
                    VStack {
                        
                        ForEach(translations, id: \.0) { translation in
                            EUCard(translation: translation)
                                .padding(.bottom, 5) // Opciono: Dodajte malo prostora između kartica
                        }
                    }
                    .padding()
                }
            }
        }}
}

struct EsmaulHusnaView_Previews: PreviewProvider {
    static var previews: some View {
        EsmaulHusnaView()
    }
}
