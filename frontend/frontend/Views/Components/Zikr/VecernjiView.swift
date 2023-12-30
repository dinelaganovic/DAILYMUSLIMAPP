//
//  VecernjiView.swift
//  frontend
//
//  Created by Muhedin Alic on 15.12.23.
//

import SwiftUI

struct VecernjiView: View {
    @Environment(\.presentationMode) var presentationMode
    @State private var zikrCounter1 = 1
    @State private var zikrCounter2 = 1
    @State private var zikrCounter3 = 1
    @State private var zikrCounter4=7
    @State private var zikrCounter5=1
    @State private var zikrCounter6 = 3
    @State private var zikrCounter7 = 1
    @State private var zikrCounter8 = 1
    @State private var zikrCounter9=1
    @State private var zikrCounter10=3
    @State private var zikrCounter11 = 1
    @State private var zikrCounter12 = 4
    @State private var zikrCounter13 = 1
    @State private var zikrCounter14 = 100
    @State private var zikrCounter15=1
    @State private var zikrCounter16 = 100
    @State private var zikrCounter17 = 10
    @State private var zikrCounter18 = 3
    @State private var zikrCounter19=3
    @State private var zikrCounter20=3

    var body: some View {
           ZStack {
               Color(red: 0, green: 0.4, blue: 0)
                   .edgesIgnoringSafeArea(.all)
                   .navigationTitle("Večernji zikr")
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
                                title: "  أَمْسَيْنَا وَأَمْسَى الْمُلْكُ لِلَّهِ، وَالْحَمْدُ لِلَّهِ، لَا إِلَهَ إِلَّا اللَّهُ وَحْدَهُ لَا شَرِيكَ لَهُ، لَهُ الْمُلْكُ، وَلَهُ الْحَمْدُ، وَهُوَ عَلَى كُلِّ شَيْءٍ قَدِيرٌ، رَبِّ أَسْأَلُكَ خَيْرَ مَا فِي هَذِهِ اللَّيْلَةِ وَخَيْرَ مَا بَعْدَهَا، وَأَعُوذُ بِكَ مِنْ شَرِّ مَا فِي هَذِهِ اللَّيْلَةِ وَشَرِّ مَا بَعْدَهَا، رَبِّ أَعُوذُ بِكَ مِنَ الْكَسَلِ وَسُوءِ الْكِبَرِ، رَبِّ أَعُوذُ بِكَ مِنْ عَذَابٍ فِي النَّارِ وَعَذَابٍ فِي الْقَبْرِ ",
                              subtitle: "Omrknusmo, a omrknu vlast u Allaha, hvala Allahu Jedinom koji nema ortaka, čija je vlast i hvala, i Koji sve može. Gospodaru molim od Tebe dobro ove noći i dobro iza nje, a utječem ti se od zla ove noći i od zla poslije nje, utječem ti se od lijenosti i od zla oholosti, utječem Ti se Gospodaru od patnje kabura i kazne džehenemske vatre.“ (Muslim)",
                              counter: $zikrCounter1
                              )
                               ZikrCard(
                              title:  "اللَّهُمَّ أَنْتَ رَبِّي، لَا إِلَٰهَ إِلَّا أَنْتَ، خَلَقْتَنِي وَأَنَا عَبْدُكَ، وَأَنَا عَلَى عَهْدِكَ وَوَعْدِكَ مَا اسْتَطَعْتُ، أَعُوذُ بِكَ مِنْ شَرِّ مَا صَنَعْتُ، أَبُوءُ لَكَ بِنِعْمَتِكَ عَلَيَّ، وَأَبُوءُ بِذَنْبِي، فَاغْفِرْ لِي؛ فَإِنَّهُ لَا يَغْفِرُ الذُّنُوبَ إِلَّا أَنْتَ",
                              subtitle: "Allahu, Ti si Gospodar moj, nema Boga osim Tebe, stvorio si me i ja sam Tvoj rob, ja sam na tragu zavjeta Tebi datog, i obećanja Tvog u svojim granicama. Tebi se sklanjam pred zlom koje sam počinio, priznajem blagodati Tvoje prema meni, Tebi priznajem svoje grijehe. Stoga, oprosti mi, jer osim Tebe niko drugi grijehe ne oprašta.(Buharija)",
                              counter: $zikrCounter2
                              )
                               ZikrCard(
                              title: " أَمْسَيْنَا عَلَى فِطْرَةِ الْإِسْلَامِ، وَعَلَى كَلِمَةِ الْإِخْلَاصِ، وَعَلَى دِينِ نَبِيِّنَا مُحَمَّدٍ صَلَّى اللَّهُ عَلَيْهِ وَسَلَّمَ، وَعَلَى مِلَّةِ أَبِينَا إِبْرَاهِيمَ حَنِيفًا مُسْلِمًا وَمَا كَانَ مِنَ الْمُشْرِكِينَ ",
                              subtitle: "Večer smo dočekali u krilu islama, na principima šehadeta (riječi: la ilahe illellah), u vjeri Vjerovjesnika našeg, Muhammeda, sallallahu alejhi we sellem, i u vjeri praoca našeg Ibrahima, a.s., iskrenog monoteista, muslimana,koji nije idolopoklonik.",
                              counter: $zikrCounter3
                              )
                           }
                           
                           Group{
                                ZikrCard(
                                title: "   حسبي الله ل إله إل هو عليه توكلت وهو رب العرش العظيُم  ",
                                subtitle: "Dovoljan mi je Allah, nema Boga osim Njega, na Njega se oslanjam. On je Gospodar Arša veličanstvenog.(Ibni Sunijj )",
                                counter: $zikrCounter4)
                               ZikrCard(
                               title: "   اللهم بك أصبحنا وبك امسينا وبك نحيا وبك نموت واليك النشور ",
                               subtitle: "  Allāhu, Tvojom voljom jutro dočekasmo i Tvojom voljom u noć uđosmo. Tvojom voljom živimo, po Tvojoj volji umiremo i po Tvojoj volji bivamo ponovo proživljeni.",
                               counter: $zikrCounter5
                               )
                               ZikrCard(
                              title:  "أعوذ بكلمات الله التامات من شر ما خلق",
                              subtitle: " Utječem se savršenim Allahovim riječima od zla onoga što je stvorio. (proučiti tri puta) (Tirmizi, Muslim, Ahmed)",
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
                                                             title: " بسم الله الذي لا يضر مع اسمه شئ في الأرض ولا في السماء وهو السميع العليم ",
                                                             subtitle: "U ime Onoga uz čije ime neće nauditi ništa na nebesima niti na zemlji, a ON sve čuje i sve zna. (proučiti tri puta) (Ebu Davud, Tirmizi, Ibn Madždže)",
                                                             counter: $zikrCounter10
                                                             )
                               ZikrCard(
                                                                  title: "اللهم عالم الغيب والشهادة فاطر السموات والْرض ، رب كل شئ ومليكه ، أشهد أن ل إله إل أنت ، أعوذ بك من شر نفسي ، ومن شر الشيطان وشركه ، وأن أقترف على نفسي سوءُاً ، أو أجره إلى مسلم",
                                                                  subtitle: "Allahu, Poznavaoče skrivenog i pojavnog (svijeta), Sazdavatelju nebesa i Zemlje, Gospodaru svega i njegov Posjedovatelju: svjedočim da nema boga osim Tebe, Tebi se sklanjam pred zlom moje duše, i pred zlom šejtana i njegovog širka, te da me sačuvaš od činjenja zla prema sebi ili bilo kom muslimanu. (Tirmizi)",
                                                                  counter: $zikrCounter11
                                                              )
                           }
                           Group{
                               ZikrCard(
                                                           title: " اللَّهُمَّ إِنِّي أَمْسَيْتُ أُشْهِدُكَ، وَأُشْهِدُ حَمَلَةَ عَرْشِكَ، وَمَلَائِكَتَكَ، وَجَمِيعَ خَلْقِكَ، أَنَّكَ أَنْتَ اللَّهُ لَا إِلَهَ إِلَّا أَنْتَ وَحْدَكَ لَا شَرِيكَ لَكَ، وَأَنَّ مُحَمَّدًا عَبْدُكَ وَرَسُولُكَ ",
                                                           subtitle: "Gospodaru moj, dočekujem večer Tebi zahvaljujući. Pozivam za svjedoka Tebe, one koji Tvoj Arš nose, Tvoje meleke i sva stvorenja Tvoja da izjavljujem da Si Ti Allah, da nema Boga osim Tebe, Jedinoga Koji nema sudruga, i da je Muhammed Tvoj rob i Tvoj poslanik. ",
                                                           counter: $zikrCounter12
                                                           )
                                                            ZikrCard(
                                                           title: " اللَّهُمَّ عَافِنِي فِي بَدَنِي، اللَّهُمَّ عَافِنِي فِي سَمْعِي، اللَّهُمَّ عَافِنِي فِي بَصَرِي، لَا إِلَهَ إِلَّا أَنْتَ، اللَّهُمَّ إِنِّي أَعُوذُ بِكَ مِنَ الْكُفْرِ وَالْفَقْرِ، وَأَعُوذُ بِكَ مِنْ عَذَابِ الْقَبْرِ، لَا إِلَهَ إِلَّا أَنْتَ ",
                                                           subtitle: " Gospodaru moj, zaštiti moje tijelo, Gospodaru moj, zaštiti moj sluh, Gospodaru moj, zaštiti moj vid, nema drugog Boga osim Tebe. Gospodaru moj, utječem Ti se od nevjerovanja, od siromaštva, i utječem ti se od kaburske kazne. Nema drugog Boga osim Tebe. ",
                                                           counter: $zikrCounter13
                                                           )
                           }
                           Group{
                               ZikrCard(
                                title: "لا إله إلا الله وحده لا شريك له، له الملك وله الحمد، وهو على كل شيء قدير",
                                subtitle: "Nema boga osim Allaha, Jedinoga, Koji druga nema. Njemu pripada vlast nad svim i sva pohvala. On sve može. (Muslim)",
                                counter: $zikrCounter14
                               )
                               ZikrCard(
                                title: "اللَّهُ لا إِلَٰهَ إِلَّا هُوَ الْحَيُّ الْقَيُّومُ ۚ لَا تَأْخُذُهُ سِنَةٌ وَلَا نَوْمٌ ۚ لَّهُ مَا فِي السَّمَاوَاتِ وَمَا فِي الْأَرْضِ ۗ مَن ذَا الَّذِي يَشْفَعُ عِندَهُ إِلَّا بِإِذْنِهِ ۚ يَعْلَمُ مَا بَيْنَ أَيْدِيهِمْ وَمَا خَلْفَهُمْ ۖ وَلَا يُحِيطُونَ بِشَيْءٍ مِّنْ عِلْمِهِ إِلَّا بِمَا شَاءَ ۚ وَسِعَ كُرْسِيُّهُ السَّمَاوَاتِ وَالْأَرْضَ ۖ وَلَا يَئُودُهُ حِفْظُهُمَا ۚ وَهُوَ الْعَلِيُّ الْعَظِيمُ",
                                subtitle: "Allah je nema boga osim Njega-Živi i Vječni! Ne obuzima Ga ni drijemež ni san! Njegovo je ono što je na nebesima i ono što je na Zemlji! Ko se može pred Njim zauzimati za nekoga bez dopuštenja Njegova?! On zna šta je bilo i prije njih i šta će biti poslije njih, a od onoga što On zna-drugi znaju samo onoliko koliko On želi. Moć Njegova obuhvata i nebesa i Zemlju i Njemu ne dojadi održavanje njihovog: On je Svevišnji, Veličanstven.",
                                counter: $zikrCounter15
                               )
                               ZikrCard(title: "سبحان الله و بحمده", subtitle: "Kaže Poslanik sallallahu alejhi ve sellem: \"Ko kaže u toku jednog dana sto puta: ‘Subhanallahi ve bi hamdihi' (Slavljen je Allah i Njemu pripada sva hvala), oprošteni su mu grijesi, pa makar ih bilo kao morske pjene.\" (Muttefekun alejhi)",
                                        counter: $zikrCounter16)
                           }
                           Group{
                               ZikrCard(title: "اللهم صلّ وسلم على نبينا محمد",
                                        subtitle: "Allāhu, pošalji Salawat i selam na Vjerovjesnika Muhammeda.", counter: $zikrCounter17)
                               ZikrCard(title: " قُلْ هُوَ اللَّهُ أَحَدٌ{1} اللَّهُ الصَّمَدُ{2} لَمْ يَلِدْ وَلَمْ يُولَدْ{3} وَلَمْ يَكُن لَّهُ كُفُواً أَحَدٌ{4} ",
                                        subtitle: "Reci: \"On je Allāh – Jedan! Allāh je Utočište svakom! Nije rodio i rođen nije, i niko Mu ravan nije!\"",
                                        counter: $zikrCounter18)
                               ZikrCard(title: "  قُلْ أَعُوذُ بِرَبِّ الْفَلَقِ{1} مِن شَرِّ مَا خَلَقَ{2} وَمِن شَرِّ غَاسِقٍ إِذَا وَقَبَ{3} وَمِن شَرِّ النَّفَّاثَاتِ فِي الْعُقَدِ{4} وَمِن شَرِّ حَاسِدٍ إِذَا حَسَدَ{5}  ",
                                        subtitle: "Reci: \"Utječem se Gospodaru svitanja od zla onoga što je On stvorio, i od zla mrkle noći kada razastre tmine, i od zla smutljivca kad smutnje sije, i od zla zavidljivca kad zavist ne krije!\"",
                                        counter: $zikrCounter19)
                               ZikrCard(title: " قُلْ أَعُوذُ بِرَبِّ النَّاسِ{1} مَلِكِ النَّاسِ{2} إِلَهِ النَّاسِ{3} مِن شَرِّ الْوَسْوَtاسِ الْخَنَّاسِ{4} الَّذِي يُوَسْوِسُ فِي صُدُورِ النَّاسِ{5} مِنَ iالْجِنَّةِ وَ النَّاسِ{6}",
                                        subtitle: "Reci: \"Tražim zaštitu Gospodara ljudi, Vladara ljudi, Boga ljudi, od zla šejtana-napasnika, koji zle misli unosi u srca ljudi – od džina i od ljudi!\"",
                                        counter: $zikrCounter20)
                           }
                           
                       }
                       .padding()
                   }
               }
               .offset(y: 30) // Prilagodite ovu vrednost prema vašim potrebama
           }
       }
}

struct VecernjiView_Previews: PreviewProvider {
    static var previews: some View {
        VecernjiView()
    }
}
