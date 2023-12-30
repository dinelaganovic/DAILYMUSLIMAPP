//
//  DuaView.swift
//  frontend
//
//  Created by Muhedin Alic on 15.12.23.
//

import SwiftUI

struct DuaView: View {
    let dove: [Dua] = [
        Dua(title:"Dova pri buđenju iz sna", longText:"الحمد لله الذي أحيانا بعد ما أماتنا وإليه النشور\n\n Hvala Allahu, Koji nas oživi nakon što nas usmrti, i Njemu se, konačno, sve vraća."),
        Dua(title:"Dova pri odijevanju", longText: " الحمد لله الذي كساني هذا (الثوب) ورزقنيه من غير حول مني ولا قوة \n\n Hvala Allahu, Koji me odjenuo ovim (ovom odjećom) i Koji me opskrbio bez moje snage i moći..."),
        Dua(title:"Dova prilikom odlaganja odjeće", longText: "بسم الله رواه الترمذي \n\n Bismillah. U ime Allaha."),
        Dua(title:"Dova prije ulaska u vc", longText: " بسم الله، اللهم إني أعوذ بك من الخبث والخبائث \n\n U ime Allaha, Allahu moj, prizivam Te protiv zla muških i ženskih šejtana. "),
        Dua(title:"Dova posle izlaska iy vc-a", longText: "غفرانك \n\n Za oprost Te molim."),
        Dua(title:"Dova prije uzimanja abdesta", longText: " بسم الله \n\n U ime Allaha."),
        Dua(title:"Dova nakon uzimanja abdesta", longText: " أشهد أن لا إله إلا الله وحده لا شريك له وأشهد أن محمداً عبده ورسوله \n\n Svjedočim da nema boga osim Allaha i svjedočim da je Muhammed Njegov rob i Njegov Poslanik. "),
        Dua(title:"Dove pri izlasku iz kuće", longText: " بسم الله، توكلت على الله، ولا حول ولا قوة إلا بالله \n\n U ime Allaha, u Allaha se pouzdavam, nema snage niti moći bez Allahove snage i moći.\n\n اللهم إني أعوذ بك أن أَضِلَّ أَو أُضَلّ،أو أزِلَّ أَو أُزَلَّ أو أظْلِمَ، أو أُظلَم، أو أجهَلَ، أو يُجْهَلَ عليَّ \n\n Allahu moj, molim Ti se da ne zalutam ili ne budem zaveden, da ne posrnem ili da ne budem naveden na grijeh, da ne činim nasilje ili da meni ne bude učinjeno, da ne budem glup ili da se prema meni bude nerazumno."),
        Dua(title: "Dova prilokom ulaska u kuću", longText: " بسم الله ولجنا، وبسم الله خرجنا، وعلى ربنا توكلنا \n\nS Allahovim imenom ulazimo i s Allahovim imenom izlazimo. Na Gospodara našega se oslanjamo. "),
        Dua(title: "Dova prilikom odlaska u džamiju", longText: " اللهم اجعل في قلبي نوراً، وفي لساني نوراً، واجعل في سَمْعي نوراً،واجعل في بصري نوراً، واجعل من خلفي نوراً،ومن أمامي نوراً،واجعل من فوقي نوراً ومن تحتي نوراً. اللهم أعطني نوراً \n\nAllahu moj, podari mi u data-originale svjetlo i u jezik svjetlo, osvijetli mi sluh i vid, daruj mi svjetlo iza mene i ispred mene, podari mi iznad mene i ispod mene svjetlo. Allahu moj, svjetlo mi daruj."),
        Dua(title: "Dova prilikom ulaska u džamiju", longText: " أعوذ بالله العظيم وبوجهه الكريم وسلطانه القديم من الشيطان الرجيم» رواه أبو داود «بسم الله، والصلاة والسلام على رسول الله ﷺ‬» رواه أبو داود «اللهم افتح لي أبواب رحمتك \n\nSklanjam se u okrilje Velikog Allaha, pred Njegovo lice časno, Njegovu vlast pravječnu, pred prokletim šejtanom. U ime Allaha, blagoslovi i spas i mir Njegovu Poslaniku. Allahu moj, otvori mi vrata milosti Tvoje. "),
        Dua(title: "Dova prilikom izlaska iz džamije", longText: " بسم الله والصلاة والسلام على رسول الله ﷺ‬، اللهم إني أسألك من فضلك، اللهم اعصمني من الشيطان الرجيم». رواه ابن ماجه\n\n U ime Allaha, blagoslov i mir i spas Allahovu Poslaniku; Allahu moj, molim Ti se da me obaspeš dobrom; Allahu moj, zaštiti me od prokletog šejtana."),
        Dua(title: "Dove pred odlazak na spavanje", longText: " كان إذا أوى إلى فراشه كل ليلة جمع كفيه ثم نفث فيهما فقرأ فيهما «قل هو الله أحد وقل أعوذ برب الفلق وقل أعوذ برب الناس ثم يمسح بهما ما استطاع من جسده يبدأ بهما على رأسه ووجهه وما أقبل من جسده يفعل ذلك ثلاث مرات \n\nSvake noći kad bi Poslanik, Allah mu se smilovao i spasio ga, pošao na spavanje i legao u postelju, sastavio bi dlanove otvorene prema licu, puhnuo u njih i (u njih) proučio suru Ihlas, Felek i Nas, te potrao dlanovima svoje tijelo koliko može dohvatiti, počevši od glave i lica, pa niz tijelo; to bi ponovio tri puta.\n\n إذا أويت إلى فراشك فأقرأ آية الكرسي الله لا إله إلا هو الحي القيوم حتى تختمها فإنه لا يزال عليك من الله حافظ ولا يقربك شيطان حتى تصبح\n\n  Kad legneš u postelju, prije nego što zaspiš, prouči dokraja Ajetul-kursijju. Allah će ti odrediti čuvara da ti se šejtan ne približi u toku noći, sve do sabaha. \n\n باسمك اللهم أموت وأحيا\n\nS Tvojim imenom, Allahu moj, umirem i živim."),
        Dua(title: "Dove protiv nevolje", longText: "لا إله إلا الله العظيم الحليم، لا إله إلا الله رب العرش العظيم، لا إله إلا الله ربُّ السموات وربُّ الأرض وربُّ العرش الكريم». رواه البخاري ومسلم\n\n La ilahe ille-l-Lahu-l-'azimu-l-halimu, la ilahe ille-l-Lahu Rabbu-l-'Arši-l-'azimi, la ilahe ille-l-Lahu Rabbu-s-Semavati ve Rabbu-l-Erdi ve Rabbu-l-'Arši-l-kerim.\n\nNema boga osim Allaha, Velikog i Blagog. Nema boga osim Allaha, Gospodara Prijestolja velikog. Nema boga osim Allaha, Gospodara nebesa i Gospodara Zemlje, Gospodara Prijestolja milostivog. \n\n اللهم رحمتك أرجو فلا تكلني إلى نفسي طرفة عين وأصلح لي شأني كله، لا إله إلا أنت». رواه أبو داود وأحمد\n\nAllahu, molim Ti se za Tvoju milost, i zato me ne prepusti meni samome nijednoga trenutka. Popravi mi cijelo moje stanje. Nema boga osim Tebe. (D, H)\n\nلا إله إلا أنت سبحانك إني كنت من الظالمين رواه الترمذي والحاكم\n\nNema boga osim Tebe. Neka si slavljen Ti, zaista sam ja bio među griješnicima.\n\nاللهُ اللهُ ربِّي لا أشركُ به شيئاً». رواه أبو داود\n\nAllah, Allah je Gospodar moj, Kojem ja ništa ne smatram ravnim.")
    ]
    @State private var searchText = ""
    var filteredDove: [Dua] {
            if searchText.isEmpty {
                return dove
            } else {
                return dove.filter { $0.title.lowercased().contains(searchText.lowercased()) }
            }
    }
    var body: some View {
        ZStack{
            Color(red: 0, green: 0.4, blue: 0)
                .navigationTitle("Dove")
                .ignoresSafeArea()
            Circle()
                .scale(1.8)
            .foregroundColor(.white)
            Rectangle()
                       .fill(Color.white) // Boja pozadine
                       .frame(width: 400, height: 200)
                       .offset(x: 0, y: 350)
            VStack{
                VStack {
                    Spacer().frame(height: 60)
                    TextField("Pretraži", text: $searchText)
                                           .padding()
                                           .background(Color.white)
                                           .cornerRadius(10)
                                           .padding(.horizontal, 20)
                                           .overlay(
                                                   RoundedRectangle(cornerRadius: 10)
                                                       .stroke(Color(red: 0, green: 0.4, blue: 0), lineWidth: 1)
                                               )
                }
                .padding()
                ScrollView(showsIndicators: false) {
                    Spacer()
                    VStack {
                        ForEach(filteredDove, id: \.title) { dova in
                            DuaCard(translation: dova)
                                .padding(.bottom, 5)
                                .fixedSize(horizontal: false, vertical: true)
                                
                       }

                    }
                    .padding()                }
            }
        }
    }
}
struct DuaView_Previews: PreviewProvider {
    static var previews: some View {
        DuaView()
    }
}
