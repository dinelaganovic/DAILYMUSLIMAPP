//
//  HadisView.swift
//  frontend
//
//  Created by Muhedin Alic on 15.12.23.
//

import SwiftUI

struct HadisView: View {
    let hadises: [Hadis] = [
        Hadis(title:"Najvise ljudi koji ce uci u dzennet bit ce zbog bogobojaznosti (takvaluka) i lijepog ahlaka.",subtitle:"(Buharija i drugi muhaddisi)"),

        Hadis(title:"Poslan sam da bih upotpunio moral.",subtitle:" (Buharija i drugi muhaddisi)"),

        Hadis(title:"Ebu Hurejre, potrudi se da imas lijep ahlak.\" Ebu Hurejre upita: \"A sta je to Allahov Poslanice?\" o­n rece: \"Da odrzavas vezu s o­nim ko je prekinuo s tobom, oprostis o­nom ko ti je nepravdu nanio i das o­nome ko tebi uskracuje." ,subtitle:"(Bejheki)"),

        Hadis(title:"Meni najblizi od vas bit ce o­ni koji imaju najljepsi ahlak, koji su skruseni i koji mire i zblizavaju.",subtitle:" (Tirmizi)"),

        Hadis(title:"Mu'min je prijatan i o­n pomiruje, a nema dobra u o­nom ko ne miri i zblizuje i u cijem drustvu nije prijatno.",subtitle:" (Ahmed)"),

        Hadis(title:"Covjek je vjere svog prijatelja, pa neka covjek gleda s kim ce se druziti.",subtitle:" (Ahmed, Ebu Dawud, Tirmizi)"),

        Hadis(title:"Uistinu, Allah ima svoje posude na zemlji, a to us srca. Najdraze su mu o­ne posude koje su najcisce, najcvrsce i najtanje. Ciste su od grijeha, cvrste su u vjeri i tanke (njezne) su prema braci.",subtitle:" (Taberani)"),

        Hadis(title:"Strogo se cuvajte sumnjicenja, jer je sumnjicenje najlazniji govor.",subtitle:" (Buharija i Muslim)"),

        Hadis(title:"Ne uhodite jedni druge, ne spijunirajte, ne prekidajte odnose i ne zavadajte se, nego, Allahovi robovi, budite braca.",subtitle:" (Buharija i Muslim)"),

        Hadis(title:"Ko sakrije sramotu svoga brata na dunjaluku, Allah ce sakriti njegovu i na dunjaluku i na ahiretu.",subtitle:"(Buharija i Muslim)"),

        Hadis(title:"Ko napusti raspravu kad nije u pravu, bude mu napravljena kuca u dzennetskoj mahali, a ko ostavi raspravu kad je u pravu, bude mu izgradena kuca u najodabranijem dijelu dzenneta.",subtitle:" (Ibn Madze i Tirmizi)"),

        Hadis(title:"Musliman je muslimanu brat: ne nanosi mu nepravdu, ne uskracuje mu njegova prava i ne ponizava ga. Covjeku je dovoljno zla to sto nipodastava brata muslimana.",subtitle:" (Muslim)"),

        Hadis(title:"Ostavite raspravu zbog malo dobra u njoj. Ostavite raspravu zbog male koristi od nje jer o­na prouzrokuje neprijateljstvo medu bracom.",subtitle:" (Taberani)"),

        Hadis(title:"Kada neko od vas zavoli svoga brata neka mu to i kaze.", subtitle:" (Ebu Dawud i Tirmizi)"),

        Hadis(title:"Razmjenjujte poklone - voljecete se.",subtitle:" (Bejheki)"),

        Hadis(title:"Najgori ljudi su o­ni koji tude rijeci prenose i o­ni koji zavadaju o­ne koji se vole.",subtitle:" (Ahmed)"),

        Hadis(title:"Kome se njegov brat izvini, a o­n ne prihvati izvinjenje, takav ima grijeh koliko je grijeh o­nog koji druge izrabljuje.",subtitle:"(Ibn Madze)"),

        Hadis(title:"Vjernik se brzo i rasrdi, ali brzo i oprosti.",subtitle:" (Tirmizi)"),

        Hadis(title:"Kada covjek uci dovu za svog odsutnog brata, melek govori: \'Neka je i tebi isto sto i njemu trazis\'.",subtitle:" (Ahmed i Muslim)"),

        Hadis(title:"Dova brata za drugog brata koji je odsutan se ne odbija.",subtitle:" (Muslim)"),

        Hadis(title:"Primjer vjernika u njihovoj medusobnoj ljubavi i samilosti je kao primjer tijela, ako oboli jedan organ, ostatak tijela obuzme groznica i nesanica.",subtitle:" (Buharija i Muslim)"),

        Hadis(title:"Vjernik vjerniku je kao zidovi zgrade, jedan drugog podupiru.",subtitle:" (Buharija i Muslim)"),

        Hadis(title:"Istinski musliman je o­naj od cijeg jezika i ruku su sigurni ostali muslimani.",subtitle:" (Buharija i Muslim)"),

        Hadis(title:"Ako nisi kadar ciniti dobra djela, o­nda makar ne nanosi ljudima zlo jer se i to ubraja u sadaku kojom ces se iskupiti.",subtitle:" (Muslim)"),

        Hadis(title:"Muslimanu nije dozvoljeno da zaplasi drugog muslimana.",subtitle:" (Ahmed)"),

        Hadis(title:"Uzviseni Allah mi je objavio da budete ponizni i da se niko ni nad kim ne uznosi.",subtitle:" (Muslim)"),

        Hadis(title:"Nece uci u dzennet klevetnik (onaj koji ogovara).",subtitle:" (Buharija)"),

        Hadis(title:"Muslimanu nije dozvoljeno da prekine odnose sa svojim bratom preko tri dana, i kada se sretnu da okrenu lice jedan od drugog, a bolji je o­naj, od njih dvojice, koji prvi nazove selam.",subtitle:" (Buharija i Muslim)"),

        Hadis(title:"Ko muslimanu oprosti njegovu pogresku, Allah ce mu na Kijametskom danu oprostiti njegovu.",subtitle:" (Ebu Dawud)"),

        Hadis(title:"Nece imetak uzmanjkati zbog udijeljene sadake, a Allah ce zbog prastanja covjeku povecati ugled i nema nikog da se ponizi Allahu i radi Allaha, a da ga Allah ne uzdigne zbog toga.",subtitle:" (Muslim)"),

        Hadis(title:"Nije od nas ko ne postuje nase starije i ko nije milostiv nasim mladim.",subtitle:" (Tirmizi)"),

        Hadis(title:"Boj se vatre (dzehennema) pa podaj drugom makar i pola hurmem, a ako ni to nemozes naci, a o­no lijepom rijecju.",subtitle:" (Buharija i Ahmed)"),

        Hadis(title:"Tri su znaka licemjera (munafika): kada govori - laze, kada obeca - ne ispuni, i kada mu se nesto povjeri - povjerenje iznevjeri.",subtitle:" (Buharija i Muslim)"),

        Hadis(title:"Covjek nece upotpuniti sovj iman sve dok ne bude kadar udjeljivati makar i iz male imovine, biti pravedan prema sebi i siriti selam.",subtitle:" (Buharija)"),

        Hadis(title:"Svaka laz se osim o­ne kad covjek slaze u ratu, jer rat je citav varka, ili slaze da bi izmirio dvojicu zavadenih ili slaze svojoj supruzi kako bi je udobrovoljio i zadovoljio.",subtitle:" (Ebu Dawud)"),

        Hadis(title:"Doista ces, ako budes istrazivao ljudske mahane, iskvariti ljude ili ih navesti na to da se iskvare.",subtitle:"(Ebu Dawud)"),

        Hadis(title:"O skupe, ima o­nih koji su priznali vjerovanje jezikom, ali iman im jos nije usao u srce! Ne ogovarajte muslimane i ne istrazujte njihove negativnosti, jer o­naj ko bude istrazivao mahane brata muslimana, Allah ce istrazivati njegove, a kome Allah bude istrazivao mahane razotkrit ce ga i osramotiti makar i u njegovoj kuci.",subtitle:" (Tirmizi i Ebu Dawud)"),

        Hadis(title:"Ko pocne s pricom prije nego nazove selam, nemojte mu odgovoriti dok selam ne nazove.",subtitle:" (Taberani)"),

        Hadis(title:"Kada se sretnu dva muslimana i rukuju, sa njih spadaju manji grijesi.",subtitle:" (Ebu Dawud i Tirmizi)"),

        Hadis(title:"Ko zeli da mu ljudi ustaju na noge neka sebi pripremi mjesto u dzehennemu.",subtitle:" (Tirmizi)"),

        Hadis(title:"Ko stane u zastitu casti brata muslimana, to cemu biti zastita od dzehennema.",subtitle:" (Tirmizi)"),

        Hadis(title:"Nema covjeka muslimana koji ce stati u odbranu casti svoga brata, a da Allah nece uzeti Sebi u obavezu da ga zastiti od dzehennemske vatre na Kijametskom danu.",subtitle:"(Ahmed)"),

        Hadis(title:"Ko prigrli siroce od roditelja muslimana do njegovog punoljetstva, takvom je sigurno obezbijeden dzennet.",subtitle:" (Ahmed)"),

        Hadis(title:"Najbolja muslimanska kuca je o­na u kojoj se cini dobrocinstvo pream sirocetu, a najgora muslimanska kuca je o­na u kojoj se prema sirocetu ruzno ophodi.",subtitle:" (Ibn Madze)"),

        Hadis(title:"Niko od vas nece dostici potpuno vjerovanje sve dok ne bude zelio i volio svome bratu o­no sto zeli i voli samome sebi.",subtitle:" (Buharija i Muslim)"),

        Hadis(title:"Svaki od vas je ogledalo svome bratu, pa ako na njemu primjeti nesto negativno, neka to otkloni od njega.",subtitle:" (Tirmizi)"),

        Hadis(title:"Ko se ne interesuje za stanje muslimana taj nije od njih.",subtitle:" (Taberani)"),

        Hadis(title:"Ko posjeti bolesnika, sjedi u dzenetskom perivoju, tako kad ustane odredi mu se 70 hiljada meleka koji salavat na njega cine sve do noci.",subtitle:" (Muslim)"),

        Hadis(title:"Kome Allah hoce dobro, iskusa ga.",subtitle:" (Buharija)"),

        Hadis(title:"Umrlog prate troje: dvoje se vrati, a jedno ostane sa njim. Prate ga njegova porodica, imetak i djela, pa se porodica i imetak vrate, a ostanu njegova djela.",subtitle:" (Buharija i Muslim)"),

        Hadis(title:"Covjek nece biti pravi vjernik sve dok komsija ne bude siguran od njegovih pakosti i podlosti.",subtitle:" (Buharija)"),

        Hadis(title:"Ko hoce da ima lijep spomen iza sebe i da mu se poveca opkrba, neka cuva rodbinske veze.",subtitle:" (Buharija i Muslim)"),

        Hadis(title:"Miris dzenneta se moze osjetiti na daljini od petsto godina hoda, a nece ga osjetiti o­naj ko je neposlusan roditeljima niti o­naj ko prekida rodbinske veze.",subtitle:" (Taberani)"),

        Hadis(title:"U dzennet nece uci varalica, o­naj ko se oholi, izdajica i o­naj ko je ruzno postupao sa svojim slugama.\"",subtitle:" (Tirmizi)"),

        Hadis(title:"Svi ste vi pastiri i svi cete odgovarati za svoje stado.",subtitle:" (Buharija i Muslim)"),

        Hadis(title:"Ljudi su Allahovi sticenici; najblizi Allahu su o­ni koji su najkorisniji Njegovim sticenicima.",subtitle:" (Muslim)"),

        Hadis(title:"Voda naroda je njegov sluga.",subtitle:" (Taberani)"),

        Hadis(title:"Ova vjera je jaka, i postupaj s njom pazljivo i lijepo.",subtitle:" (Ahmed)"),
        Hadis(title:"Ljudi su kao kamile - od stotine njih ne mozes naci jednu dobru za jahanje.",subtitle:" (Buharija i Muslim)"),

        Hadis(title:"Allahova je pomoc dzematu. Ko god sam ode iz dzemata, sam ce se naci u dzehennemu.",subtitle:" (Tirmizi)"),

        Hadis(title:"Vjera je iskren savjet.",subtitle:" (Muslim)"),

        Hadis(title:"Onaj ko nije zahvalan ljudima nije zahvalan ni Allahu.",subtitle:" (Ebu Dawud i Tirmizi)"),

        Hadis(title:"Namaz u dzematu vrijedniji je dvadeset i sedam puta od namaza pojedinca.",subtitle:" (Buharija i Muslim)"),

        Hadis(title:"Bdijenje nekog od vas na Allahovom putu bolje je nego da u svojoj kuci klanja 70 godina.",subtitle:" (Tirmizi)"),

        Hadis(title:"Najgore sto se moze naci kod covjeka jeste skrtost zbog pohlepe i strah bez razloga.",subtitle:" (Buharija i Ebu Dawud)"),

        Hadis(title:"Najgori od ljudi jeste o­naj od koga se nesto zatrazi u ime Allaha, pa ovog taj odbije.",subtitle:" (Buharija i Muslim)"),

        Hadis(title:"Najveci je kradljivac o­naj ko krade od svog namaza, ko ne upotpunjava ni njegoa ruku\'a, niti sedzde. A najskrtiji je o­naj ko skrtari sa selamom.",subtitle:"(Taberani)"),

        Hadis(title:"Zenite se i mnozite, jer cu se ja ponositi vasom brojnoscu pred drugim narodima.",subtitle:" (Ebu Dawud i Nesai)"),

        Hadis(title:"Jak je vjernik bolji i Allahu drazi od slabog vjernika.",subtitle:"(Muslim)"),

        Hadis(title:"Allah, uistinu, ne gleda u vasa tijela niti u vas izgled, nego gleda u vasa srca.",subtitle:" (Muslim)"),

        Hadis(title:"Zaista Allah voli da o­naj ko nesto radi to uradi na najbolji nacin.",subtitle:" (Bejheki)"),

        Hadis(title:"Dobrocinstvo je da obozavas Allaha kao da Ga vidis, jer iako ti Njega ne vidis, o­n tebe, zaista, vidi.",subtitle:" (Buharija i Muslim)"),

        Hadis(title:"Mnogo li je postaca koji od svog posta nece imati nista osim gladi; i mnogo li je klanjaca koji od svog namaza nece imati nista osim bdijenja.",subtitle:" (Nesai i Ibn Madze)"),
    ]
    @State private var randomHadis: Hadis?

    var body: some View {
        ZStack{
            Color(red: 0, green: 0.4, blue: 0)
                .ignoresSafeArea()
            Circle()
                .scale(1.8)
                .foregroundColor(.white)
            ZStack {

                           if let randomHadis = randomHadis {
                               HadisCard(translation: randomHadis)
                           } else {
                               Text("Nema dostupnih hadisa.")
                                   .foregroundColor(.black)
                           }
                       }
                       .onAppear {
                           getRandomHadis()
                       }
        }
    }
    func getRandomHadis() {
               guard let randomHadis = hadises.randomElement() else {
                   // Ako je niz prazan, postavi randomHadis na nil
                   self.randomHadis = nil
                   return
               }
               self.randomHadis = randomHadis
           }
}

struct HadisView_Previews: PreviewProvider {
    static var previews: some View {
        HadisView()
    }
}
