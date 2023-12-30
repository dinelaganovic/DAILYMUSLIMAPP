//
//  JutarnjiView.swift
//  frontend
//
//  Created by Muhedin Alic on 15.12.23.
//

import SwiftUI

struct JutarnjiView: View {
    @Environment(\.presentationMode) var presentationMode
    @State private var zikrCounter1 = 1
    @State private var zikrCounter2 = 1
    @State private var zikrCounter3 = 1
    @State private var zikrCounter4=7
    @State private var zikrCounter5=1
    @State private var zikrCounter6 = 1
    @State private var zikrCounter7 = 1
    @State private var zikrCounter8 = 1
    @State private var zikrCounter9=1
    @State private var zikrCounter10=3
    @State private var zikrCounter11 = 3
    @State private var zikrCounter12 = 1
    @State private var zikrCounter13 = 100
    @State private var zikrCounter14 = 1
    @State private var zikrCounter15=100
    @State private var zikrCounter16 = 10
    @State private var zikrCounter17 = 3
    @State private var zikrCounter18 = 3
    @State private var zikrCounter19=3
    var body: some View {
           ZStack {
               Color(red: 0, green: 0.4, blue: 0)
                   .edgesIgnoringSafeArea(.all)
                   .navigationTitle("Jutarnji zikr")
                   .foregroundColor(Color(red: 0, green: 0.4, blue: 0))
                   .navigationBarTitleDisplayMode(.inline)
                   .navigationBarBackButtonHidden(true)
                   .navigationBarItems(
                       trailing: Button(action: {
                           presentationMode.wrappedValue.dismiss()
                       }) {
                           Image(systemName: "xmark")
                               .font(.title)
                               .imageScale(.small)
                               .frame(width: 10, height: 10)
                       }
                   )
               ZStack {
                   Color.white
                       .ignoresSafeArea()

                   ScrollView(showsIndicators: false) {
                       VStack(spacing: 20) {
                           Group{
                               ZikrCard(
                                 title: "أَصْبَحْنَا وَأَصْبَحَ الْمُلْكُ لِلَّهِ وَالْحَمْدُ لِلَّهِ لَا إِلَٰهَ إِلَّا اللَّهُ وَحْدَهُ لَا شَرِيكَ لَهُ، وَلَهُ الْحَمْدُ وَهُوَ عَلَىٰ كُلِّ شَيْءٍ قَدِيرٌ، رَبِّ أَسْأَلُكَ خَيْرَ هَذَا الْيَوْمِ وَخَيْرَ مَا بَعْدَهُ، وَأَعُوذُ بِكَ مِنْ شَرِّ هَذَا الْيَوْمِ وَشَرِّ مَا بَعْدَهُ، رَبِّ أَعُوذُ بِكَ مِنْ الْكَسَلِ وَهَمِّ الْهَمِّ وَأَعُوذُ بِكَ مِنْ عَذَابِ النَّارِ وَعَذَابِ الْقَبْرِ",
                                 subtitle: "Osvanusmo i osvanu svekolika Allahova vlast. Hvala Allahu i nema boga osim Njega Jedinog, Koji druga nema. Njemu pripada sva vlast i svaka pohvala i on nad svačim ima moć. Allahu, molim Te za sva dobra ovog dana i za dobra poslije njega. I utječem ti se od zla ovog dana i zla poslije njega. Gospodaru moj, Tebi se sklanjam pred lijenošću i zlohudom ohološću. Tebi se sklanjam pred kaznom Džehennema i kaburskom kaznom. (Muslim)",
                                 counter: $zikrCounter1
                               )
                               
                               ZikrCard(
                                 title: "اللَّهُمَّ أَنْتَ رَبِّي، لَا إِلَٰهَ إِلَّا أَنْتَ، خَلَقْتَنِي وَأَنَا عَبْدُكَ، وَأَنَا عَلَى عَهْدِكَ وَوَعْدِكَ مَا اسْتَطَعْتُ، أَعُوذُ بِكَ مِنْ شَرِّ مَا صَنَعْتُ، أَبُوءُ لَكَ بِنِعْمَتِكَ عَلَيَّ، وَأَبُوءُ بِذَنْبِي، فَاغْفِرْ لِي؛ فَإِنَّهُ لَا يَغْفِرُ الذُّنُوبَ إِلَّا أَنْتَ",
                                 subtitle: "Allahu, Ti si Gospodar moj, nema Boga osim Tebe, stvorio si me i ja sam Tvoj rob, ja sam na tragu zavjeta Tebi datog, i obećanja Tvog u svojim granicama. Tebi se sklanjam pred zlom koje sam počinio, priznajem blagodati Tvoje prema meni, Tebi priznajem svoje grijehe. Stoga, oprosti mi, jer osim Tebe niko drugi grijehe ne oprašta.(Buharija)",
                                 counter: $zikrCounter2
                               )
                               
                               ZikrCard(
                                 title: "أصبحنا على فطرة الإسلام، وعلى كلمة الإخلاص، وعلى دين نبينا محمد صلى الله عليه وسلم، وعلى ملة أبينا إبراهيم حنيفًا سلمًا وما كان من المشركين",
                                 subtitle: "Jutro smo dočekali u skladu s islamom, na osnovu riječi iskrenosti, u vjeri našeg Poslanika Muhammeda, sallallahu alejhi we sellem, i u vjeri našeg praoca Ibrahima, koji je bio iskreni monoteista, musliman, a nije bio idolopoklonik. (Hadis)",
                                 counter: $zikrCounter3
                               )
                           }
                           
                           Group{
                               ZikrCard(
                                title: "   حسبي الله ل إله إل هو عليه توكلت وهو رب العرش العظيُم  ",
                                subtitle: "Dovoljan mi je Allah, nema Boga osim Njega, na Njega se oslanjam. On je Gospodar Arša veličanstvenog.(Ibni Sunijj )",
                                counter: $zikrCounter4
                                )
                               ZikrCard(
                                 title: "اللّهم ما أصبحَ بي من نعمةٍ أو بأحدٍ من خلقِك، فمنكَ وحدَكَ لا شريكَ لك، فلكَ الحمدُ ولكَ الشُّكرُ.",
                                 subtitle: "Gospodaru moj, ono što je osvanulo kod mene od blagodati, ili kod bilo koga od Tvojih stvorenja, pa to je samo od Tebe, Ti nemaš sudruga, pa Tebi pripada sva hvala i zahvala.",
                                 counter: $zikrCounter5
                               )
                               ZikrCard(
                               title: "   اللهم بك أصبحنا وبك امسينا وبك نحيا وبك نموت واليك النشور ",
                               subtitle: "  Allāhu, Tvojom voljom jutro dočekasmo i Tvojom voljom u noć uđosmo. Tvojom voljom živimo, po Tvojoj volji umiremo i po Tvojoj volji bivamo ponovo proživljeni.",
                               counter: $zikrCounter6
                               )
                           }
                           Group{
                               ZikrCard(
                               title: "  رضيت بالله ربُاً ، وبالإسلام دينُاً ، وبمحمد صلى الله عليه وسلم نبيُاً ",
                               subtitle: " Zadovoljan sam Allahom Gospodarom, Islamom vjerom, i Muhamedom s.a.v.s Vjerovjesnikom. (Tirmizi)",
                               counter: $zikrCounter7
                               )
                               ZikrCard(
                               title: "  يا حي يا قيوم، برحمتك أستغيث، أص ِلح لي شأني كلّه، ول تَكلني إلى نفسي ط ْرفة عين ",
                               subtitle: " O Ti, Živi, Postojani Održavatelju, molim Te za Tvoju obilatu milost – popravi moje stanje u svakom pogledu i ne prepusti me meni samome ni jednoga trena. (Hakim)",
                               counter: $zikrCounter8
                               )
                               ZikrCard(
                                 title: "اللهم إني أسألك العفو والعافية في الدنيا والآخرة، اللهم إني أسألك العفو والعافية في ديني ودنياي وأهلي ومالي، اللهم استر عوراتي، وآمن روعاتي، اللهم احفظني من بين يدي ومن خلفي وعن يميني وعن شمالي ومن فوقي، وأعوذ بعظمتك إن أغتال من تحتي",
                                 subtitle: "Allahu, molim oprost i zaštitu Tvoju na dunjaluku i na ahiretu. Allahu, molim oprost i zaštitu Tvoju u porodici i imovini mojoj. Allahu, pokrij moja sramna djela, a umiri moju bojazan. Allahu, sačuvaj me s moje prednje strane, te od svega što me može zadesiti s leđa, s desne ili lijeve strane i odozgo. Prizivam Tvoju Veličinu da ne budem ščepan odozdo. (Muteffekun alejhi)",
                                 counter: $zikrCounter9
                               )
                           }
                           Group{
                               ZikrCard(
                               title: "  سبحان هالل وبحمده :عدد خلقه ، ورضا نفسه ، وزنة عرشه ، ومداد كلماه",
                               subtitle: "Slavljen neka je Allah, i hvala Mu onoliko koliki je broj Njegovih stvorenja, i koliko je zadovoljstvo Njegovo, i koliko je ukrašen Njegov Arš, i koliko treba da se ispišu Njegove riječi.(Muslim) ",
                               counter: $zikrCounter10
                               )
                               ZikrCard(
                               title: " بسم الله الذي لا يضر مع اسمه شئ في الأرض ولا في السماء وهو السميع العليم ",
                               subtitle: "U ime Onoga uz čije ime neće nauditi ništa na nebesima niti na zemlji, a ON sve čuje i sve zna. (proučiti tri puta) (Ebu Davud, Tirmizi, Ibn Madždže)",
                               counter: $zikrCounter11
                               )
                               ZikrCard(
                                   title: "اللهم عالم الغيب والشهادة فاطر السموات والْرض ، رب كل شئ ومليكه ، أشهد أن ل إله إل أنت ، أعوذ بك من شر نفسي ، ومن شر الشيطان وشركه ، وأن أقترف على نفسي سوءُاً ، أو أجره إلى مسلم",
                                   subtitle: "Allahu, Poznavaoče skrivenog i pojavnog (svijeta), Sazdavatelju nebesa i Zemlje, Gospodaru svega i njegov Posjedovatelju: svjedočim da nema boga osim Tebe, Tebi se sklanjam pred zlom moje duše, i pred zlom šejtana i njegovog širka, te da me sačuvaš od činjenja zla prema sebi ili bilo kom muslimanu. (Tirmizi)",
                                   counter: $zikrCounter12
                               )

                           }
                           Group{
                               ZikrCard(
                                title: "لا إله إلا الله وحده لا شريك له، له الملك وله الحمد، وهو على كل شيء قدير",
                                subtitle: "Nema boga osim Allaha, Jedinoga, Koji druga nema. Njemu pripada vlast nad svim i sva pohvala. On sve može. (Muslim)",
                                counter: $zikrCounter13
                               )
                               ZikrCard(
                                title: "اللَّهُ لا إِلَٰهَ إِلَّا هُوَ الْحَيُّ الْقَيُّومُ ۚ لَا تَأْخُذُهُ سِنَةٌ وَلَا نَوْمٌ ۚ لَّهُ مَا فِي السَّمَاوَاتِ وَمَا فِي الْأَرْضِ ۗ مَن ذَا الَّذِي يَشْفَعُ عِندَهُ إِلَّا بِإِذْنِهِ ۚ يَعْلَمُ مَا بَيْنَ أَيْدِيهِمْ وَمَا خَلْفَهُمْ ۖ وَلَا يُحِيطُونَ بِشَيْءٍ مِّنْ عِلْمِهِ إِلَّا بِمَا شَاءَ ۚ وَسِعَ كُرْسِيُّهُ السَّمَاوَاتِ وَالْأَرْضَ ۖ وَلَا يَئُودُهُ حِفْظُهُمَا ۚ وَهُوَ الْعَلِيُّ الْعَظِيمُ",
                                subtitle: "Allah je nema boga osim Njega-Živi i Vječni! Ne obuzima Ga ni drijemež ni san! Njegovo je ono što je na nebesima i ono što je na Zemlji! Ko se može pred Njim zauzimati za nekoga bez dopuštenja Njegova?! On zna šta je bilo i prije njih i šta će biti poslije njih, a od onoga što On zna-drugi znaju samo onoliko koliko On želi. Moć Njegova obuhvata i nebesa i Zemlju i Njemu ne dojadi održavanje njihovog: On je Svevišnji, Veličanstven.",
                                counter: $zikrCounter14
                               )
                               ZikrCard(title: "سبحان الله و بحمده", subtitle: "Kaže Poslanik sallallahu alejhi ve sellem: \"Ko kaže u toku jednog dana sto puta: ‘Subhanallahi ve bi hamdihi' (Slavljen je Allah i Njemu pripada sva hvala), oprošteni su mu grijesi, pa makar ih bilo kao morske pjene.\" (Muttefekun alejhi)",
                                        counter: $zikrCounter15)
                           }
                           Group{
                               ZikrCard(title: "اللهم صلّ وسلم على نبينا محمد",
                                        subtitle: "Allāhu, pošalji Salawat i selam na Vjerovjesnika Muhammeda.", counter: $zikrCounter16)
                               ZikrCard(title: " قُلْ هُوَ اللَّهُ أَحَدٌ{1} اللَّهُ الصَّمَدُ{2} لَمْ يَلِدْ وَلَمْ يُولَدْ{3} وَلَمْ يَكُن لَّهُ كُفُواً أَحَدٌ{4} ",
                                        subtitle: "Reci: \"On je Allāh – Jedan! Allāh je Utočište svakom! Nije rodio i rođen nije, i niko Mu ravan nije!\"",
                                        counter: $zikrCounter17)
                               ZikrCard(title: "  قُلْ أَعُوذُ بِرَبِّ الْفَلَقِ{1} مِن شَرِّ مَا خَلَقَ{2} وَمِن شَرِّ غَاسِقٍ إِذَا وَقَبَ{3} وَمِن شَرِّ النَّفَّاثَاتِ فِي الْعُقَدِ{4} وَمِن شَرِّ حَاسِدٍ إِذَا حَسَدَ{5}  ",
                                        subtitle: "Reci: \"Utječem se Gospodaru svitanja od zla onoga što je On stvorio, i od zla mrkle noći kada razastre tmine, i od zla smutljivca kad smutnje sije, i od zla zavidljivca kad zavist ne krije!\"",
                                        counter: $zikrCounter18)
                               ZikrCard(title: " قُلْ أَعُوذُ بِرَبِّ النَّاسِ{1} مَلِكِ النَّاسِ{2} إِلَهِ النَّاسِ{3} مِن شَرِّ الْوَسْوَtاسِ الْخَنَّاسِ{4} الَّذِي يُوَسْوِسُ فِي صُدُورِ النَّاسِ{5} مِنَ iالْجِنَّةِ وَ النَّاسِ{6}",
                                        subtitle: "Reci: \"Tražim zaštitu Gospodara ljudi, Vladara ljudi, Boga ljudi, od zla šejtana-napasnika, koji zle misli unosi u srca ljudi – od džina i od ljudi!\"",
                                        counter: $zikrCounter19)
                           }
                           
                       }
                       .padding()
                   }
               }
               .offset(y: 30) // Prilagodite ovu vrednost prema vašim potrebama
           }
       }
}

struct JutarnjiView_Previews: PreviewProvider {
    static var previews: some View {
        JutarnjiView()
    }
}
