import SwiftUI

struct Ayah: Codable {
    let number: Int
    let text: String
}

struct SurahCardData: Codable {
    let data: SurahData
}

struct SurahData: Codable {
    let name: String
    let numberOfAyahs:Int
    let ayahs: [Ayah]

    // Proverava da li ajet sadrži "Bismillah"
    func containsBismillah(ayah: Ayah) -> Bool {
        return ayah.text.lowercased().contains("bismillah")
    }

    var bismillahText: String? {
        // Pronalazi prvi ajet koji sadrži "Bismillah"
        if let firstBismillahAyah = ayahs.first(where: { containsBismillah(ayah: $0) }) {
            return firstBismillahAyah.text
        }
        return nil
    }

    var regularAyahs: [Ayah] {
        // Uklanja sve ajeve koji sadrže "Bismillah"
        return ayahs.filter { !containsBismillah(ayah: $0) }
    }
}

struct SurahCard: View {
    let number: Int
    @State private var surahCardData: SurahCardData?
    @Environment(\.presentationMode) var presentationMode
    var body: some View {
        ZStack{
            Color(red: 0, green: 0.4, blue: 0)
                .edgesIgnoringSafeArea(.all)
                .navigationTitle(surahCardData?.data.name ?? "")
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
            VStack {
                   Spacer()
                    Text("Broj ajeta: \(surahCardData?.data.numberOfAyahs ?? 0)")
                        .font(.system(size: 14))
                    Spacer()
                    Spacer()
                ScrollView {
                    VStack(spacing: 3) {
                        if let bismillahText = surahCardData?.data.bismillahText {
                            Text(bismillahText)
                                .padding()
                                .foregroundColor(.black)
                                .frame(maxWidth: .infinity, alignment: .trailing)
                                .lineLimit(nil) // Postavi lineLimit na nil kako bi tekst prelazio u novi red
                        }
                        
                        ForEach(surahCardData?.data.regularAyahs ?? [], id: \.text) { ayah in
                            Text(ayah.text)
                                .padding()
                                .foregroundColor(.black)
                                .frame(maxWidth: .infinity, alignment: .trailing)
                                .lineLimit(nil) // Postavi lineLimit na nil za ostale ajeve
                        }
                    }
                    .onAppear {
                        fetchSurah()
                        
                    }
                }
            }
            .frame(maxHeight: .infinity)
            .background(Color.white)
        }
    }
    
       private func fetchSurah() {
        guard let url = URL(string: "http://api.alquran.cloud/v1/surah/\(number)") else {
            return
        }

        URLSession.shared.dataTask(with: url) { data, response, error in
            if let error = error {
                print("Error: \(error.localizedDescription)")
                return
            }

            guard let httpResponse = response as? HTTPURLResponse, (200...299).contains(httpResponse.statusCode) else {
                print("Invalid response: \(response.debugDescription)")
                return
            }

            guard let data = data else {
                print("Data is missing.")
                return
            }

            // Ispis dekodiranih ajetima u konzoli
            do {
                let decodedResponse = try JSONDecoder().decode(SurahCardData.self, from: data)
                decodedResponse.data.ayahs.forEach { ayah in
                    print("Ayah \(ayah.number): \(ayah.text)")
                }
                DispatchQueue.main.async {
                    self.surahCardData = decodedResponse
                }
            } catch {
                print("Decoding failed: \(error.localizedDescription)")
            }
        }.resume()
    }

}

struct SurahCard_Previews: PreviewProvider {
    static var previews: some View {
        SurahCard(number: 2)
    }
}
