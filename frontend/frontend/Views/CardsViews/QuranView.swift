import SwiftUI
import SwiftUIX
struct QuranView: View {
    @State private var surahs: [Surah] = []
    var body: some View {
        MainContentView(surahs: $surahs)
        .onAppear(perform: loadData)
    }

    func loadData() {
        DataLoader.loadData { result in
            switch result {
            case .success(let surahs):
                DispatchQueue.main.async {
                    self.surahs = surahs
                }
            case .failure(let error):
                print("Error fetching data: \(error)")
            }
        }
    }
}

extension QuranView {
    struct MainContentView: View {
        @Binding var surahs: [Surah]
        var body: some View {
            NavigationView {
                List {
                       ForEach(surahs, id: \.number) { surah in
                           NavigationLink(destination: SurahCard(number: surah.number)) {
                               QuranCard(translation: surah)
                           }
                           .accentColor(.clear) // Postavljamo boju akcenta na prozirnu kako bismo sakrili strelice
                       }
                   }
                .listStyle(PlainListStyle()) 
                .navigationBarHidden(true)
                .navigationBarBackButtonHidden(true)
            }
        }
    }
}

extension QuranView {
    struct DataLoader {
        static func loadData(completion: @escaping (Result<[Surah], Error>) -> Void) {
            guard let url = URL(string: "http://api.alquran.cloud/v1/surah") else {
                print("Invalid URL")
                return
            }

            URLSession.shared.dataTask(with: url) { data, _, error in
                if let data = data {
                    do {
                        let result = try JSONDecoder().decode(SurahResponse.self, from: data)
                        completion(.success(result.data))
                    } catch {
                        completion(.failure(error))
                    }
                } else if let error = error {
                    completion(.failure(error))
                }
            }.resume()
        }
    }
}
struct SurahResponse: Codable {
       let data: [Surah]
   }

struct Surah: Codable, Identifiable {
    let id: String?
    //var id: Int { number }
    let number: Int
    let name: String
    let translatedName: String
    
    enum CodingKeys: String, CodingKey {
        case id
        case number
        case name
        case translatedName = "englishName"
    }
    init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        self.id = try container.decodeIfPresent(String.self, forKey: .id)
        self.number = try container.decode(Int.self, forKey: .number)
        self.name = try container.decode(String.self, forKey: .name)
        self.translatedName = try container.decode(String.self, forKey: .translatedName)
    }
    
    // Opciono: Dodajte encode(to:) metodu ako nameravate da kodirate podatke
    func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encode(id, forKey: .id)
        try container.encode(number, forKey: .number)
        try container.encode(name, forKey: .name)
        try container.encode(translatedName, forKey: .translatedName)
    }
}
